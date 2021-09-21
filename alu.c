/*
 * STUDENT: Jack Kieny
 */

/*
 * IntegerLab (c) 2018-21 Christopher A. Bohn
 */

/******************************************************************************
 * In this lab, students are required to implement integer arithmetic for
 * unsigned 16-bit integers and signed (twos complement) 16-bit integers using
 * only bitwise and (&), bitwise or (|), bitwise xor (^), bitwise complement
 * (~), and bit shifts (<< and >>). DO NOT USE built-in addition (+),
 * subtraction (-), multiplication (*), division (/), nor modulo (%).
 ******************************************************************************/

#define UINT16_MAX 65535;
#include "alu.h"
#include <inttypes.h>
#include <stdio.h>

bool overflowCheck(uint16_t result, uint16_t a, uint16_t b){
    int RESULT = result;
    int A = a;
    int B = b;
    int carry;
    while(B != 0){
        carry = A & B;
        A = A ^ B;
        B = carry << 1;
        RESULT = A ^ B;
    }
    if(RESULT>UINT16_MAX){
        return true;
    }
    return false;
}


/* Adds the two arguments and stores the sum in the return structure's result
 * field.  If the operation overflowed then the overflow flag is set. */
addition_subtraction_result add(uint16_t augend, uint16_t addend) {
    addition_subtraction_result addition;
/*    addition.result = augend + addend;                          // THIS IS DISALLOWED
    addition.overflow = false;                                  // THIS IS WRONG
*/

    if(augend == 0){
        addition.result = addend;       // 0 + addend = addend
        addition.overflow = false;
        return addition;
    }
    else if(addend == 0){
        addition.result = augend;       // augend + 0 = augend
        addition.overflow = false;
        return addition;
    }

    uint16_t augend_orig = augend;
    uint16_t addend_orig = addend;

    uint16_t augend_sign = augend >> 15;
    uint16_t addend_sign = addend >> 15;
    uint16_t carry;

    while(addend != 0){
        carry = augend & addend;
        augend = augend ^ addend;
        addend = carry << 1;
        addition.result = augend ^ addend;
    }

   if((!is_signed)){we
        addition.overflow = overflowCheck(addition.result, augend_orig, addend_orig);
   }

    uint16_t result_sign = addition.result >> 15;
    if(is_signed){
        if((augend_sign==0) && (addend_sign==0) && (result_sign==1)){addition.overflow = true;}         // (+A) + (+B) = −C overflow -> YES
        else if((augend_sign==1) && (addend_sign==1) && (result_sign==0)){addition.overflow = true;}    // (−A) + (−B) = +C overflow -> YES
        else if((augend_sign==0) && (addend_sign==1) && (result_sign==1)){addition.overflow = true;}    // (+A) - (-B) = -C overflow -> YES
        else if((augend_sign==1) && (addend_sign==0) && (result_sign==0)){addition.overflow = true;}    // (-A) - (+B) = +C overflow -> YES
        else{addition.overflow = false;}
    }

    return addition;
}

/* Subtracts the second argument from the first, stores the difference in the
 * return structure's result field.  If the operation overflowed then the
 * overflow flag is set. */
addition_subtraction_result subtract(uint16_t menuend, uint16_t subtrahend) {
    uint16_t augend = menuend;
    uint16_t addend = add(~subtrahend, 0b1).result;     //Gets 2's compliment of subtrahend
    return add(augend, addend);
}

/* Multiplies the two arguments.  The function stores lowest 16 bits of the
 * product in the return structure's product field and the full 32-bit product
 * in the full_product field.  If the product doesn't fit in the 16-bit
 * product field then the overflow flag is set. */
multiplication_result multiply(uint16_t multiplicand, uint16_t multiplier) {
    multiplication_result multiplication;
/*    multiplication.product = multiplicand * multiplier;         // THIS IS DISALLOWED
    multiplication.full_product = multiplicand * multiplier;    // THIS IS DISALLOWED
    multiplication.overflow = false;                            // THIS IS WRONG
*/

    if(multiplicand==0 || multiplier==0){
        multiplication.overflow = false;
        multiplication.full_product = 0;
        multiplication.product = 0;
        return multiplication;
    }
    else if(multiplicand==1){
        multiplication.product = multiplier;
        multiplication.full_product = multiplier;
        multiplication.overflow = false;
        return multiplication;
    }
    else if(multiplier==1){
        multiplication.product = multiplicand;
        multiplication.full_product = multiplicand;
        multiplication.overflow = false;
        return multiplication;
    }

    uint32_t x=multiplicand, y=multiplier;
    uint32_t z=0, i=0;
    bool ovflw;

    while(i < y){
        z = add(z, x).result;
        ovflw = add(z, x).overflow;
        i = add(i, 1).result;

    }
    multiplication.product = z;
    multiplication.full_product =z;
    multiplication.overflow = ovflw;
    return multiplication;
}

/* Divides the first argument by the second.  The function stores the quotient
 * in the return structure's quotient field and the the quotient in the
 * remainder field.  If the divisor is zero then the quotient and remainder
 * fields should be ignored, and the division_by_zero field should be set. */
division_result divide(uint16_t dividend, uint16_t divisor) {
    division_result division;
/*    if (divisor) {
        division.quotient = dividend / divisor;                 // THIS IS DISALLOWED
        division.remainder = dividend % divisor;                // THIS IS DISALLOWED
    }
    division.division_by_zero = false;                          // THIS IS WRONG
*/

    if(divisor==0){
        division.division_by_zero = true;
        return division;
    }
    else if(divisor==1){
        division.quotient = dividend;
        division.remainder = 0;
        division.division_by_zero = false;
    }
    else if(dividend==0) {
        division.division_by_zero = false;
        division.quotient = 0;
        division.remainder = 0;
        return division;
    }
    else if(dividend == divisor){
        division.division_by_zero = false;
        division.quotient = 1;
        division.remainder = 0 ;
        return division;
    }


    return division;
}

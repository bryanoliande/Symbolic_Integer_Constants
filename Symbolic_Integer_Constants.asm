;TITLE  Symbolic_Integer_Constants 

; Program:     Chapter 3, Symbolic_Integer_Constants
; Description: Write a program that defines symbolic constants for all seven days of the week

    ;Define each integer value for symbol Monday, ..., Sunday to simulate C++ enumeration type
    ;In the data segment, create an array to uses these symbols as initializers
    ;Use $ operator to calculate the number of elements in the array
    ;In the code segment, watch the array count with a register

; Student:     Bryan Oliande
; Date Due:        02/17/2015
; Class:       CSCI 241
; Instructor:  Mr. Ding

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

;Define each integer value for symbol Monday, ..., Sunday to simulate C++ enumeration type
Monday = 0
Tuesday = 1
Wednesday = 2
Thursday = 3
Friday = 4
Saturday = 5
Sunday = 6

.data
;In the data segment, create an array to uses these symbols as initializers
array DWORD Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday

;Use $ operator to calculate the number of elements in the array
arraySize = ($ - array) / 4

.code
main1 proc
;In the code segment, watch the array count with a register
mov eax, arraySize
   invoke ExitProcess,0
main1 endp
end main1
; Caroline Kirkconnell
; Date: 2/12/2021
; Project 2 ( Other solutions could work as well )
; Description: This program reads a value from an
; array, adds another value to this, and saves the
; sum of those two values into a specific register.
; Resources: I used programming.haven.home.blog
; to learn about assembly in Visual Studio.
; I used Wikipedia to learn about MASM and arrays.

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

; Setup the input array and the shift variable
.data
		; Declares a BYTE array with the label 'input'
		input byte 1,2,3,4,5,6,7,8
		; Declares a BYTE variable with the label 'shift'
		shift byte 2
.code
		main proc
			; Clear up the registers to make sure there is no old values inside them
			; Declares the values of the EAX, EBX, ECX, and EDX to 0
			xor eax, eax	; resets EAX to 0
			xor ebx, ebx	; resets EBX to 0
			xor ecx, ecx	; resets ECX to 0
			xor edx, edx	; resets EDX to 0

			; The first sums should be in high position of the AX register
			mov ah, [input+1]
			add ah, shift

			; The second sums should be in low position of the AX register
			mov al, [input+2]
			add al, shift

			; The third sums should be in high position of BX register
			mov bh, [input+3]
			add bh, shift

			; The fourth sums should be in low position of BX register
			mov bl, [input+4]
			add bl, shift

			; The fifth sums should be in high position of CX register
			mov ch, [input+5]
			add ch, shift

			; The sixth sums should be in low position of CX register
			mov cl, [input+6]
			add cl, shift

			; The seventh sums should be in high position of DX register
			mov dh, [input+7]
			add dh, shift

			; The eighth sums should be in low position of the DX register
			mov dl, [input+8]
			add dl, shift

			; exit the program
			invoke ExitProcess, 0
		main endp
end main
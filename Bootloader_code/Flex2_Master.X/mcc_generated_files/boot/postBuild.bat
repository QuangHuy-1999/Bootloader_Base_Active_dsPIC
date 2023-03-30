if %5=="true" (
exit 0
)
hexmate r0-9FFF,"%~2\%~3\%~4" rA008-FFFFFFFF,"%~2\%~3\%~4" -O"%~2\%~3\temp_original_copy.X.production.hex" -FILL=w1:0x00,0x00,0x00,0x00@0xA000:0xA007
hexmate rA000-FFFFFFFF,"%~2\%~3\temp_original_copy.X.production.hex" -O"%~2\%~3\temp_crc.X.production.hex" -FILL=w1:0xFF,0xFF,0xFF,0x00@0xA000:0xAEFFF +-CK=A000-AEFFF@A000w-4g5p814141AB
hexmate rA000-A001,"%~2\%~3\temp_crc.X.production.hex" rA002-FFFFFFFF,"%~2\%~3\%~4" r0-9FFF,"%~2\%~3\%~4" -O"%~2\%~3\%~4"
hexmate rA000-FFFFFFFF,"%~2\%~3\temp_original_copy.X.production.hex" -O"%~2\%~3\temp_crc.X.production.hex" -FILL=w1:0xFF,0xFF,0xFF,0x00@0xA000:0xAEFFF +-CK=A000-AEFFF@A002w-4g5p814141AB
hexmate rA004-A005,"%~2\%~3\temp_crc.X.production.hex" rA006-FFFFFFFF,"%~2\%~3\%~4" r0-A003,"%~2\%~3\%~4" -O"%~2\%~3\%~4"
del "%~2\%~3\temp_original_copy.X.production.hex"
del "%~2\%~3\temp_crc.X.production.hex"
#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYP� ����P����������P�/��H � `
|�7gm���m���(u�V�qA Є	�� �'ꞑ�z�zO(i�z�����h�jy@zG��=@�D�FOBjzOI� 44h4�         �                $D"��OQ7�m��L�C�i�M��4�C�@A�C'� �               	$�hLA�Sz!S�6���hmi�jz��� �@nx�N�^���Mb'Z���ۏ�mH����L
��
���u���Ӎ�O��*1]�Z�GV�-5�g�j9YňS��4���%�
f>1��5�1�ye2��`��!������#&f!��P��5��X��Rn��^�f����<0�;\�=�k��|����1��A3K�@z�U�s|���.����}&-t��|�I��,F���H��w�G�DwL|�����ngv��
�@�����z1-.��_����͡2�&�H�1�PP2$CY �	)-����JB�m�(/��v�+p����Y��H�KR����U���C��n�8����'�XDSt~9��#;[*\K<�S?U��F�0˫��p123�����j	˸:�����h%��p����T�h��d0b=��-,�$�.����~f��v�\�Ӡ��q12�6��2N�V���F���'5�f3��3w�0F�i��]3��MR�LlL}!�~�DUP"��!)�<�&X�l���Ԓ|�ro·2�%:����p�Pp6�����_����Q%�ӝI���r�3A�XQ����g;�zl:Y�Q�Li��u�UE:%�h[ ���lM7�$@Œ��Ƙ�337��S;t�"+E��g]��47	�6,X$5Ê�(2��9M-��e��q�
�L`l��}Ga��)����K�u\�:�3bW�����+N�����z,��8"�:�Gʼ}:
���E)�Y���fQB<�ս�|�UM��t��`a��&AI`T �K�>K/d˙N�5�,兌W��ٲ�`
.k�1R_m�HiH�Yd��Vȑ�ph���{���u���O`2{y�.#iu��-�}X��h=%�@ٮ�p`�L;TUG�1d/8��I���� �N�e�����ѨɄ�d�Q��7�cxl���Ҵ%��|�U%�:aM���%�Id���e]�E�7C~�-Q�Jcm71�J��	�F��<���Ԍs�T		-Mj��S=���{�vO%��1���)!��[)U�p%�4���ʆ��tp�D}�r��R�AgP�&F9R\0��3#i+FȪ�M��2�εk�b?�q@~d$�*��_^�6m�T'[P��f%�IƧ!f#��{n�,�ڷ
v׶'��p��|>������	��[�fN��/]�oX����ά�t�)'M��C�m�̣�d&�Z�+V'/��H�qf-h{��]q]��� ���}̼*�s�:@��� ���+!Qk�8�nK^;����H��?Px�S!��e�E��H"olq3>d���q2����ż5��!����W��t�n�����\""Z��v.C��PU�x��J�w*f"�Mo H|�Ȃe�tZ���<�*ª"�!�"5ǠWpw�HPң"X�Vf�}zC����ći�&�̌��5QR��"ѯ�/k`9��F"��.�Om�G�돵^�y�;Aˀ�3��Z��Ji�c(']Zg#7E_H���w-N�K�<���������$g��cPD[0��r0C�,���b"�ǰ�O�� q��L�¡���5�0���#� :i�N����z�\\�Vיz#M
"8u!΍���)b��{\�4*����fz�6�Q6�4a�.���:�3X�"�#��ih@k10D�8��D�-��Xǉ7-��ų�HH�' ��6�׽ɂ��bq!�8�j(�]m�V�񫑔�&��L��4��x��+Iۈ����LZ�L,S1x�׸��1�	��g��-f��S���f��˘���U!#�BSb�P��>�K�U��/�C�4���%��"�E�X�$����2�7�@҄��XR�иՏ!ylz0S�#>.Z1"��9�Qκ�I=en}d�EM5�C��F^�
����Q��p�N��s#�.��"k���{�=�i� �����@�[f�֕ċE��Ε�2e�H��d�!0������E$1N#KD�꧎#����)W5]����ͪ1)j�w�a�I�����0R
�Q܅�Q��ob�L8٪Iي��i��N.}54��T��(JʰP�8^�ឫ�Rb�@�wW�0�&\�H�(���٘��a�_}��TqE� r�6�O���5j%.����:�o��RU.�G�q�y��#q���ʤ��I��'�̄[�æf2�2������G�Es�����ݴV������\�眘[�K\	0$1��9��7�.�M�����5�
]:��Ѡ��u��$�n��Ą��L@� ����0]��-ӼBp�B30H6@"��@�48
���;��/�P:�����H�

�� 
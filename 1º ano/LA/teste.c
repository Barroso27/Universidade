
#include <stdio.h>
#include <stdlib.h>

#define SIZE 2022

int compare(const void * a, const void * b) {
    return ( *(int*)a - *(int*)b );
}

int sort_digits(int num) {
    int digit_array[10] = {0};
    while(num != 0) {
        digit_array[num % 10]++;
        num /= 10;
    }
    int sorted_num = 0;
    for(int i = 0; i < 10; i++) {
        for(int j = 0; j < digit_array[i]; j++) {
            sorted_num = sorted_num * 10 + i;
        }
    }
    return sorted_num;
}

int main() {
int sequencia[1879] = {385, 217, 850, 926, 891, 497, 635, 894, 636, 256, 658, 842, 994, 968, 466, 645, 697, 751, 693, 465, 748, 395, 534, 366, 765, 957, 519, 533, 366, 219, 184, 746, 209, 951, 851, 525, 427, 661, 687, 607, 289, 387, 711, 619, 385, 331, 271, 989, 121, 692, 962, 115, 886, 137, 189, 463, 294, 120, 642, 935, 351, 222, 507, 135, 181, 362, 857, 511, 231, 688, 303, 859, 773, 118, 443, 799, 673, 742, 839, 985, 405, 110, 338, 207, 917, 434, 942, 706, 182, 191, 979, 792, 418, 664, 871, 977, 410, 436, 289, 751, 889, 116, 172, 739, 895, 851, 804, 552, 245, 344, 624, 791, 196, 400, 456, 539, 829, 803, 706, 981, 416, 409, 868, 445, 831, 303, 152, 875, 694, 624, 707, 123, 646, 948, 227, 130, 400, 487, 211, 958, 419, 286, 196, 417, 709, 897, 942, 617, 708, 470, 160, 279, 761, 526, 598, 391, 290, 458, 570, 981, 655, 832, 911, 636, 811, 168, 310, 515, 929, 855, 340, 539, 227, 276, 155, 913, 987, 394, 734, 709, 436, 956, 878, 842, 217, 880, 110, 279, 315, 851, 588, 255, 798, 309, 505, 248, 931, 899, 238, 587, 879, 145, 858, 405, 562, 240, 424, 567, 472, 516, 180, 425, 391, 210, 254, 908, 139, 722, 355, 794, 653, 219, 171, 577, 826, 986, 421, 136, 813, 464, 342, 466, 163, 564, 645, 750, 337, 979, 838, 109, 237, 152, 824, 684, 651, 895, 863, 736, 744, 455, 851, 246, 611, 920, 652, 806, 332, 598, 398, 697, 643, 481, 352, 675, 627, 395, 268, 655, 438, 921, 382, 672, 916, 104, 308, 183, 737, 283, 688, 215, 889, 592, 412, 171, 487, 882, 657, 974, 654, 580, 368, 216, 289, 870, 732, 389, 193, 972, 328, 750, 251, 255, 701, 312, 739, 208, 847, 286, 384, 274, 977, 749, 436, 149, 934, 298, 711, 192, 772, 723, 940, 808, 955, 388, 550, 855, 418, 769, 636, 658, 170, 298, 466, 673, 278, 793, 553, 190, 191, 364, 605, 633, 324, 865, 254, 888, 988, 181, 229, 630, 129, 230, 160, 845, 767, 163, 935, 958, 839, 542, 332, 501, 143, 801, 197, 751, 517, 752, 112, 397, 165, 149, 140, 222, 696, 532, 526, 573, 900, 881, 593, 108, 518, 935, 971, 528, 879, 115, 311, 565, 698, 167, 309, 145, 408, 259, 177, 128, 330, 950, 717, 881, 489, 726, 388, 725, 869, 284, 990, 283, 790, 918, 276, 554, 189, 177, 149, 164, 131, 781, 433, 429, 499, 999, 425, 206, 987, 360, 655, 649, 278, 508, 844, 273, 811, 282, 242, 984, 205, 137, 254, 852, 766, 525, 576, 360, 432, 777, 924, 259, 796, 392, 661, 862, 185, 304, 828, 196, 496, 479, 874, 346, 998, 952, 107, 537, 273, 697, 352, 127, 349, 217, 251, 250, 856, 113, 212, 180, 800, 972, 788, 288, 657, 309, 768, 266, 464, 708, 427, 889, 795, 248, 535, 777, 796, 354, 758, 715, 330, 638, 244, 171, 377, 986, 831, 356, 138, 580, 490, 327, 816, 434, 676, 636, 390, 170, 444, 921, 112, 700, 405, 520, 863, 469, 568, 337, 635, 885, 851, 754, 494, 555, 333, 606, 233, 631, 907, 242, 686, 229, 768, 575, 840, 588, 254, 213, 940, 744, 215, 756, 788, 344, 690, 756, 401, 684, 543, 862, 558, 430, 902, 458, 572, 557, 531, 280, 990, 259, 970, 702, 937, 619, 325, 445, 486, 544, 505, 231, 155, 437, 871, 354, 189, 467, 957, 438, 646, 440, 164, 720, 288, 691, 512, 368, 466, 397, 191, 413, 296, 833, 695, 208, 819, 730, 363, 630, 352, 483, 239, 125, 982, 489, 271, 846, 767, 382, 769, 693, 133, 327, 835, 397, 465, 293, 576, 305, 891, 573, 914, 964, 845, 439, 409, 274, 452, 770, 658, 824, 768, 739, 989, 845, 218, 526, 616, 297, 459, 392, 651, 813, 727, 842, 587, 309, 860, 518, 420, 333, 581, 391, 308, 301, 693, 898, 828, 169, 295, 370, 445, 484, 895, 675, 314, 557, 389, 589, 327, 477, 365, 873, 794, 838, 685, 703, 488, 388, 471, 879, 655, 627, 518, 214, 106, 856, 104, 788, 304, 201, 954, 397, 764, 415, 253, 806, 680, 993, 976, 957, 687, 174, 106, 216, 228, 893, 226, 575, 369, 482, 807, 848, 959, 102, 433, 326, 963, 672, 173, 192, 398, 358, 632, 998, 458, 446, 657, 586, 996, 845, 960, 212, 736, 559, 473, 791, 209, 653, 772, 206, 180, 942, 865, 477, 696, 762, 245, 325, 311, 542, 871, 633, 936, 352, 696, 574, 169, 793, 302, 195, 486, 362, 305, 755, 564, 620, 431, 852, 577, 912, 138, 575, 380, 705, 383, 402, 549, 219, 793, 281, 940, 875, 323, 381, 904, 330, 719, 779, 382, 833, 714, 849, 552, 686, 938, 353, 104, 905, 624, 192, 426, 614, 341, 180, 599, 124, 555, 499, 716, 270, 583, 198, 628, 558, 607, 931, 534, 320, 727, 214, 860, 883, 928, 140, 984, 631, 326, 856, 873, 612, 713, 548, 775, 361, 391, 386, 411, 752, 554, 406, 919, 419, 269, 215, 734, 662, 215, 747, 550, 691, 320, 887, 775, 692, 343, 219, 233, 120, 260, 814, 381, 821, 190, 424, 810, 569, 707, 723, 895, 724, 964, 912, 319, 318, 397, 442, 130, 952, 897, 766, 403, 260, 698, 724, 631, 575, 156, 488, 829, 219, 338, 776, 965, 508, 618, 931, 918, 667, 903, 426, 214, 532, 463, 211, 722, 689, 401, 519, 448, 897, 786, 340, 361, 451, 783, 255, 559, 340, 744, 756, 283, 884, 933, 507, 217, 209, 483, 910, 767, 661, 672, 478, 895, 652, 368, 539, 164, 731, 909, 813, 161, 556, 556, 760, 699, 138, 223, 187, 677, 926, 606, 644, 236, 870, 478, 329, 253, 205, 751, 301, 772, 521, 596, 381, 926, 269, 801, 610, 451, 927, 938, 538, 862, 755, 856, 852, 580, 919, 281, 407, 413, 503, 472, 337, 985, 394, 942, 618, 144, 601, 207, 338, 885, 366, 745, 409, 820, 727, 611, 726, 669, 434, 434, 128, 558, 613, 160, 498, 418, 307, 856, 447, 968, 831, 714, 770, 602, 540, 898, 375, 815, 462, 404, 770, 126, 524, 464, 891, 275, 839, 263, 412, 695, 652, 108, 706, 140, 836, 987, 621, 862, 293, 411, 880, 477, 662, 401, 893, 720, 688, 933, 655, 886, 966, 490, 285, 836, 584, 510, 793, 195, 481, 317, 236, 891, 822, 789, 127, 191, 919, 123, 879, 971, 832, 158, 169, 111, 315, 208, 179, 297, 340, 942, 498, 423, 994, 397, 921, 337, 126, 549, 598, 681, 605, 137, 679, 318, 116, 456, 135, 226, 244, 680, 149, 146, 139, 188, 874, 482, 795, 479, 157, 881, 875, 593, 763, 200, 989, 813, 105, 753, 735, 570, 192, 167, 466, 532, 226, 846, 943, 726, 273, 648, 399, 470, 731, 798, 434, 386, 863, 262, 444, 689, 629, 240, 134, 881, 565, 922, 416, 349, 321, 270, 951, 891, 957, 300, 876, 344, 408, 132, 574, 170, 242, 702, 767, 666, 532, 409, 699, 748, 360, 468, 755, 532, 950, 622, 369, 909, 441, 133, 536, 361, 646, 363, 190, 341, 529, 301, 473, 805, 184, 104, 847, 613, 934, 745, 768, 320, 544, 884, 847, 895, 701, 908, 600, 337, 998, 711, 418, 461, 820, 920, 791, 241, 468, 382, 875, 371, 140, 932, 832, 620, 913, 431, 792, 154, 832, 304, 490, 130, 554, 262, 252, 887, 564, 278, 793, 398, 721, 795, 400, 633, 550, 715, 220, 965, 566, 419, 675, 352, 557, 767, 293, 689, 890, 797, 250, 600, 537, 915, 356, 110, 693, 453, 372, 802, 855, 304, 897, 871, 197, 684, 702, 716, 800, 557, 327, 310, 662, 783, 908, 878, 774, 135, 816, 427, 809, 121, 577, 131, 612, 944, 201, 584, 159, 833, 544, 457, 401, 111, 629, 167, 819, 745, 308, 745, 331, 896, 240, 178, 716, 537, 110, 175, 422, 411, 817, 185, 623, 391, 650, 986, 352, 754, 184, 733, 144, 593, 711, 765, 679, 456, 701, 141, 182, 270, 413, 392, 526, 721, 250, 330, 823, 371, 308, 744, 841, 972, 576, 781, 577, 972, 618, 711, 633, 765, 389, 361, 680, 587, 947, 949, 970, 297, 566, 158, 701, 909, 163, 381, 123, 224, 223, 573, 996, 574, 194, 739, 612, 693, 654, 976, 748, 769, 179, 146, 132, 922, 528, 380, 567, 302, 932, 598, 415, 259, 157, 323, 571, 545, 526, 919, 757, 981, 953, 895, 314, 422, 883, 371, 399, 661, 257, 727, 513, 154, 703, 811, 380, 645, 140, 467, 791, 694, 422, 347, 721, 456, 662, 955, 310, 573, 409, 722, 698, 620, 213, 288, 995, 974, 707, 783, 142, 649, 164, 102, 298, 636, 910, 263, 371, 325, 331, 950, 954, 414, 855, 909, 732, 910, 287, 586, 137, 374, 205, 852, 949, 106, 629, 104, 521, 396, 685, 344, 959, 441, 905, 894, 300, 458, 772, 887, 653, 707, 913, 546, 429, 917, 770, 952, 572, 542, 964, 142, 336, 270, 691, 893, 865, 185, 760, 912, 687, 424, 564, 723, 843, 393, 301, 568, 227, 417, 807, 301, 457, 749, 170, 838, 221, 184, 680, 806, 191, 560, 554, 364, 633, 528, 220, 591, 938, 847, 868, 159, 969, 636, 365, 718, 377, 432, 799, 895, 742, 410, 629, 582, 503, 815, 729, 801, 439, 564, 744, 287, 307, 956, 129, 970, 399, 282, 307, 578, 699, 816, 494, 862, 692, 403, 753, 859, 691, 527, 620, 413, 612, 153, 321, 665, 310, 560, 612, 814, 556, 599, 896, 962, 807, 868, 731, 354, 823, 206, 353, 542, 549, 673, 526, 552, 815, 673, 805, 127, 853, 823, 661, 430, 764, 127, 131, 489, 389, 188, 523, 249, 827, 385, 627, 948, 237, 428, 389, 476, 231, 866, 105, 850, 130, 543, 891, 520, 114, 782, 124, 470, 631, 843, 744, 652, 875, 967, 583, 542, 122, 977, 675, 353, 448, 161, 467, 578, 281, 467, 955, 435, 451, 490, 220, 890, 505, 298, 221, 759, 918, 976, 947, 721, 185, 377, 607, 139, 579, 763, 978, 919, 814, 442, 810, 601, 278, 581, 206, 364, 155, 131, 314, 191, 199, 308, 575, 356, 529, 167, 646, 539, 410, 872, 189, 598, 811, 803, 686, 174, 714, 153, 899, 243, 169, 577, 493, 293, 760, 475, 976, 344, 122, 541, 716, 332, 143, 543, 651, 168, 858, 172, 807, 775, 843, 618, 916, 935, 276, 448, 418, 101, 784, 764, 476, 846, 194, 835, 999, 416, 155, 148, 701, 450, 569, 146, 599, 546, 745, 473, 405, 485, 630, 138, 320, 788, 426, 918, 152, 462, 352, 523, 818, 210, 690, 732, 597, 400, 516, 645, 354, 844, 473, 470, 641, 374, 295, 118, 515, 777, 859, 522, 962, 703, 379, 697, 489, 171, 344, 572, 774, 267, 220, 791, 723, 126, 461, 487, 294, 372, 829, 744, 299, 531, 777, 838, 273, 669, 962, 101, 436, 290, 588, 608, 378, 707, 625, 437, 117, 113, 633, 568, 936, 498, 466, 745, 719, 399, 666, 898, 853, 757, 952, 660, 129, 413, 700, 941, 817, 939, 589, 204, 899, 207, 929, 618, 864, 738, 841, 177, 689, 624, 871, 361, 950, 706, 888, 757, 645, 886, 324, 762, 471, 116, 591, 610, 669, 916};
    int array_res[SIZE];
    for(int i = 0; i < SIZE; i++) {
        array_res[i] = sort_digits(sequencia[i]);
    }
    qsort(array_res, SIZE, sizeof(int), compare);
    int most_frequent = array_res[0], count = 1, max_count = 1;
    for(int i = 1; i < SIZE; i++) {
        if(array_res[i] == array_res[i-1]) {
            count++;
            if(count > max_count) {
                max_count = count;
                most_frequent = array_res[i];
            }
        } else {
            count = 1;
        }
    }
    printf("Most frequent number is %d\n", most_frequent);
    return 0;
}
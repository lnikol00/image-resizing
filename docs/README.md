# Picture explanations:

The entire code works in a way that 1 pixel from the input image is copied into 4 pixels of the output image. To better understand how this works, we can think of 1 pixel as representing a letter of the alphabet. In this way, we will have pixel A, pixel B...(input.JPG)

As part of the project, I had to complete two tasks. The first task involves simple image upscaling, where when copying, for example, pixel A from the input image, we will get 4 pixels on the output, namely A1, A2, A3, and A4. Each pixel from the input image will be copied in the same way.(output_v1)

The second task also involves upscaling the image, but in a slightly different way. The edges of the image will be copied in the same manner, while the pixels will be copied according to the following algorithm (where J is given as an example and the copying applies to all other pixels):

* J1 = ¼ I4 + ¼ B2 + ½ J
* J2 = ¼ I4 + ¾ J
* J3 = ¼ B4 + ¾ J
* J4 = J

Each of these pixels is located at a specific address calculated in the code. The code for address calculation will be significantly different because, in the second task, we need to consider neighboring pixels in the calculation.

Pixels inside the red boundary are calculated using neighboring pixels according to the algorithm mentioned above, while pixels outside the red boundary are computed in the same way as in the first task. (output_v2)

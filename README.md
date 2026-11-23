# Maurat, Ivy Joyce C.
# INF 245 MWA
# 1009703

Laboratory 1: Facebook News Feed Enhancement

These enhancements made the Facebook News Feed application better in that they added functionality to the NewsFeedCard widget utilizing dynamic data and reusable widgets.

Firstly, this included adding images to posts. It was done through the use of the AssetImage and Conditional Rendering. This enables each post to display different images based on the data passed to the NewsFeedCard widget. Posts with no images are successfully displayed by using the conditional widget.

Secondly, instead of the default profile icons, the use of actual profile pictures using CircleAvatar was utilized. Profile pictures are now displayed dynamically using widget parameters, which enable different users to use unique profile pictures. The comment box was also enhanced to use the current user's profile picture, just like in social media websites.

Thirdly, to make the app interactive and more appealing to users, all the functionalities of like, comment, and share buttons were converted into reusable widget components using PostActionButton widget. This was achieved in order to avoid repeating the code.

Finally, state management of the Like button functionality was included. This enables users to interact with the Like button and switch from Like to Liked status and dynamically update the number of likes on the post.

As a result of these enhancements, the application is made more dynamic and interactive compared to before and looks more like a real social media website. Through these enhancements, important concepts of the Flutter Development were illustrated including reusability and maintainability.
import bb.cascades 1.4

Page {
    id: page

    Container {
        id: con

        onTouch: {
            movingContainer.translationX = event.localX - (movingContainer.preferredWidth / 2);
            movingContainer.translationY = event.localY - (movingContainer.preferredHeight / 2);

            if (event.touchType == TouchType.Move)
                movingContainer.background = Color.Green;
            else if (event.touchType == TouchType.Up)
                movingContainer.background = Color.Blue;
        }

        Container {
            id: movingContainer
            preferredWidth: 150
            preferredHeight: 150
            background: Color.Blue
        }
    }
}

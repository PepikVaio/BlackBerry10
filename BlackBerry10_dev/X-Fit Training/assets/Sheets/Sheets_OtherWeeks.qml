import bb.cascades 1.4

// import folders
import "../Pages"
//***************

Sheet {
    id: sheet
    content: delegate.object

    attachedObjects: [

        Delegate {
            id: delegate

            Page_OtherWeeks {
            }
        }
    ]

    onOpenedChanged: {
        if (opened)
            delegate.active = true;
    }

    onClosed: {
        navigationPane.property_Count_01 = 1
        navigationPane.property_Count_02 = 1
        delegate.active = false;
    }
}

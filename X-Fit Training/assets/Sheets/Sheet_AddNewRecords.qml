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
            
            Page_AddNewRecords {
            }
        }
    ]
    
    onOpenedChanged: {
        if (opened)
            delegate.active = true;
    }
    
    onClosed: {
        delegate.active = false;
    }
}

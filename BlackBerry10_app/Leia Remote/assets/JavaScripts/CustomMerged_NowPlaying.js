function function_ChangeButtonSize_01() {
	if (layoutUpdateHandler.layoutFrame.width / customMerged_ImageButtons_01.alias_Container.count() < ui.sdu(14)) {
		property_ButtonSize = layoutUpdateHandler.layoutFrame.width / customMerged_ImageButtons_01.alias_Container.count();
	}
}
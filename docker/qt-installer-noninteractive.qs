function Controller() {
    installer.autoRejectMessageBoxes();
    installer.installationFinished.connect(function() {
        gui.clickButton(buttons.NextButton,3000);
    })
}

Controller.prototype.WelcomePageCallback = function() {
    gui.clickButton(buttons.NextButton,3000);
}

Controller.prototype.CredentialsPageCallback = function() {
    gui.clickButton(buttons.NextButton,3000);
}

Controller.prototype.IntroductionPageCallback = function() {
    gui.clickButton(buttons.NextButton,3000);
}

Controller.prototype.TargetDirectoryPageCallback = function()
{
    gui.currentPageWidget().TargetDirectoryLineEdit.setText(installer.value("HomeDir") + "/Qt");
    gui.clickButton(buttons.NextButton,3000);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
    var widget = gui.currentPageWidget();

    widget.deselectAll();

// pretty sure the line below is the problem, but cant find a list over the proper paths to use for linux.

    widget.selectComponent("qt.qt5.5112.gcc_64");  
    //widget.selectComponent("qt.55.qtquickcontrols");

    // widget.deselectComponent("qt.tools.qtcreator");
    // widget.deselectComponent("qt.55.qt3d");
    // widget.deselectComponent("qt.55.qtcanvas3d");
    // widget.deselectComponent("qt.55.qtlocation");
    // widget.deselectComponent("qt.55.qtquick1");
    // widget.deselectComponent("qt.55.qtscript");
    // widget.deselectComponent("qt.55.qtwebengine");
    // widget.deselectComponent("qt.extras");
    // widget.deselectComponent("qt.tools.doc");
    // widget.deselectComponent("qt.tools.examples");

    gui.clickButton(buttons.NextButton,3000);
}

Controller.prototype.LicenseAgreementPageCallback = function() {
    gui.currentPageWidget().AcceptLicenseRadioButton.setChecked(true);
    gui.clickButton(buttons.NextButton,10000);
}

Controller.prototype.StartMenuDirectoryPageCallback = function() {
    gui.clickButton(buttons.NextButton,3000);
}

Controller.prototype.ReadyForInstallationPageCallback = function()
{
    gui.clickButton(buttons.NextButton,3000);
}

Controller.prototype.FinishedPageCallback = function() {
var checkBoxForm = gui.currentPageWidget().LaunchQtCreatorCheckBoxForm
if (checkBoxForm && checkBoxForm.launchQtCreatorCheckBox) {
    checkBoxForm.launchQtCreatorCheckBox.checked = false;
}
    gui.clickButton(buttons.FinishButton);
}
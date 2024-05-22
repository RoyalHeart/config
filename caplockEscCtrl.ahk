#Requires AutoHotkey v2.0-beta
#SingleInstance

ih := InputHook("B L1 T1", "{Esc}")

*Capslock::
{
	ih.Start()
	reason := ih.Wait()
	if (reason = "Stopped") {
		Send "{Esc}"
	} else if (reason = "Max") {
		Send "{Blind}{Ctrl down}" ih.Input
	}
}

*Capslock up::
{
	if (ih.InProgress) {
		ih.Stop()
	} else {
		Send "{Ctrl up}"
	}
}

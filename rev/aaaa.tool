<?xml version="1.0" encoding="UTF-8"?>
<TOOL_CONFIG CONFIG_NAME="NO_LONGER_USED">
    <SUPPORTED_DATA_TYPE CLASS_NAME="ghidra.program.model.listing.Program" />
    <SUPPORTED_DATA_TYPE CLASS_NAME="ghidra.program.model.listing.DataTypeArchive" />
    <SUPPORTED_DATA_TYPE CLASS_NAME="ghidra.trace.model.Trace" />
    <ICON LOCATION="greenDragon24.png" />
    <TOOL TOOL_NAME="CodeBrowser" INSTANCE_NAME="">
        <OPTIONS />
        <PACKAGE NAME="Debugger" />
        <PACKAGE NAME="Ghidra Core">
            <INCLUDE CLASS="ghidra.app.plugin.core.interpreter.InterpreterPanelPlugin" />
            <INCLUDE CLASS="ghidra.app.plugin.core.terminal.TerminalPlugin" />
        </PACKAGE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.debug.gui.memory.DebuggerMemoryBytesPlugin">
            <XML NAME="connectedProvider">
                <SAVE_STATE>
                    <STATE NAME="Bytes Per Line" TYPE="int" VALUE="16" />
                    <STATE NAME="Hex view groupsize" TYPE="int" VALUE="1" />
                    <STATE NAME="Offset" TYPE="int" VALUE="0" />
                    <ARRAY NAME="View Names" TYPE="string">
                        <A VALUE="Hex" />
                    </ARRAY>
                    <SAVE_STATE NAME="View_Widths" TYPE="SaveState">
                        <View_Widths>
                            <STATE NAME="Addresses" TYPE="int" VALUE="100" />
                            <STATE NAME="Hex" TYPE="int" VALUE="343" />
                        </View_Widths>
                    </SAVE_STATE>
                    <STATE NAME="autoSpec" TYPE="string" VALUE="1_READ_VIS_RO_ONCE" />
                    <STATE NAME="spec" TYPE="string" VALUE="TRACK_PC" />
                </SAVE_STATE>
            </XML>
            <STATE NAME="disconnectedCount" TYPE="int" VALUE="0" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.debug.gui.time.DebuggerTimePlugin">
            <STATE NAME="hideScratch" TYPE="boolean" VALUE="true" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.navigation.GoToAddressLabelPlugin">
            <STATE NAME="CASE_SENSITIVE" TYPE="boolean" VALUE="false" />
            <ARRAY NAME="GO_TO_HISTORY" TYPE="string" />
            <STATE NAME="INCLUDE_DYNAMIC" TYPE="boolean" VALUE="true" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.datapreview.DataTypePreviewPlugin">
            <STATE NAME="TerminatedCString" TYPE="string" VALUE="/" />
            <STATE NAME="TerminatedUnicode" TYPE="string" VALUE="/" />
            <STATE NAME="byte" TYPE="string" VALUE="/" />
            <STATE NAME="char" TYPE="string" VALUE="/" />
            <STATE NAME="double" TYPE="string" VALUE="/" />
            <STATE NAME="dword" TYPE="string" VALUE="/" />
            <STATE NAME="float" TYPE="string" VALUE="/" />
            <STATE NAME="qword" TYPE="string" VALUE="/" />
            <STATE NAME="word" TYPE="string" VALUE="/" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.features.base.memsearch.gui.MemorySearchPlugin">
            <STATE NAME="Show Options Panel" TYPE="boolean" VALUE="false" />
            <STATE NAME="Show Scan Panel" TYPE="boolean" VALUE="false" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.debug.gui.watch.DebuggerWatchesPlugin">
            <STATE NAME="rowCount" TYPE="int" VALUE="0" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.overview.OverviewColorPlugin">
            <ARRAY NAME="ActiveServices" TYPE="string" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.symboltree.SymbolTreePlugin">
            <STATE NAME="GO_TO_TOGGLE_STATE" TYPE="boolean" VALUE="false" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.calltree.CallTreePlugin">
            <STATE NAME="FILTER_DUPLICATES" TYPE="boolean" VALUE="true" />
            <STATE NAME="FILTER_REFERENCES" TYPE="boolean" VALUE="false" />
            <STATE NAME="FILTER_THUNKS" TYPE="boolean" VALUE="false" />
            <STATE NAME="RECURSE_DEPTH" TYPE="int" VALUE="5" />
            <STATE NAME="SHOW_NAMESPACE" TYPE="boolean" VALUE="false" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="functioncalls.plugin.FunctionCallGraphPlugin">
            <STATE NAME="DISPLAY_SATELLITE" TYPE="boolean" VALUE="true" />
            <STATE NAME="DOCK_SATELLITE" TYPE="boolean" VALUE="true" />
            <STATE NAME="DOCK_SATELLITE_POSITION" TYPE="string" VALUE="LOWER_RIGHT" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.symtable.SymbolTablePlugin">
            <XML NAME="FILTER_SETTINGS">
                <SYMBOL_TABLE_FILTER>
                    <ADVANCED_FILTER NAME="Primary Labels" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    <FILTER NAME="Namespaces" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Offcut Labels" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Default (Functions)" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="false" />
                    <FILTER NAME="Imported" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Non-Primary Labels" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <ADVANCED_FILTER NAME="Externals" ACTIVE="false">
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Classes" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Local Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Parameters" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Namespaces" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <ADVANCED_FILTER NAME="Non-Externals" ACTIVE="false">
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Classes" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Local Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Parameters" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Namespaces" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                    <FILTER NAME="External Library" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <FILTER NAME="User Defined" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Stack Variables" ACTIVE="false">
                        <FILTER NAME="Parameters" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Local Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Default (Labels)" ACTIVE="false" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Not In Memory" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                    <FILTER NAME="Classes" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Globals" ACTIVE="false">
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Classes" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Namespaces" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Parameters" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Register Variables" ACTIVE="false">
                        <FILTER NAME="Parameters" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Local Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Global Register Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Locals" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Classes" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Namespaces" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    </ADVANCED_FILTER>
                    <ADVANCED_FILTER NAME="Subroutines" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <FILTER NAME="Analysis" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <FILTER NAME="Local Variables" ACTIVE="false" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="false" />
                    <ADVANCED_FILTER NAME="Entry Points" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                    <ADVANCED_FILTER NAME="Unreferenced" ACTIVE="false">
                        <FILTER NAME="Instruction Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Data Labels" ACTIVE="true" INCLUDES_DEFAULTS="true" ONLY_CODE_SYMBOLS="true" />
                        <FILTER NAME="Function Labels" ACTIVE="true" INCLUDES_DEFAULTS="false" ONLY_CODE_SYMBOLS="true" />
                    </ADVANCED_FILTER>
                </SYMBOL_TABLE_FILTER>
            </XML>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.debug.gui.tracermi.launcher.TraceRmiLauncherServicePlugin">
            <SAVE_STATE NAME="DBGLAUNCH" TYPE="SaveState">
                <SAVE_STATE />
            </SAVE_STATE>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.datamgr.DataTypeManagerPlugin">
            <ARRAY NAME="ArchiveNames" TYPE="string">
                <A VALUE="$GHIDRA_HOME/Features/Base/data/typeinfo/generic/generic_clib_64.gdt" />
            </ARRAY>
            <STATE NAME="ArrayFilterState" TYPE="boolean" VALUE="true" />
            <STATE NAME="ConflictResolutionMode" TYPE="string" VALUE="RENAME_AND_ADD" />
            <STATE NAME="DataMembersInSearchState" TYPE="boolean" VALUE="false" />
            <ARRAY NAME="Favorite Dts" TYPE="string">
                <A VALUE="/pointer" />
                <A VALUE="/char" />
                <A VALUE="/string" />
                <A VALUE="/TerminatedCString" />
                <A VALUE="/TerminatedUnicode" />
                <A VALUE="/float" />
                <A VALUE="/double" />
                <A VALUE="/longdouble" />
                <A VALUE="/int" />
                <A VALUE="/long" />
                <A VALUE="/uint" />
                <A VALUE="/ulong" />
                <A VALUE="/byte" />
                <A VALUE="/word" />
                <A VALUE="/dword" />
                <A VALUE="/qword" />
            </ARRAY>
            <STATE NAME="PointerFilterState" TYPE="boolean" VALUE="true" />
            <STATE NAME="PreviewWindowState" TYPE="boolean" VALUE="false" />
            <ARRAY NAME="RecentArchiveNames" TYPE="string">
                <A VALUE="$GHIDRA_HOME/Features/Base/data/typeinfo/generic/generic_clib_64.gdt" />
            </ARRAY>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.debug.gui.model.DebuggerModelPlugin">
            <XML NAME="connectedProvider">
                <SAVE_STATE>
                    <STATE NAME="limitToSnap" TYPE="boolean" VALUE="true" />
                    <STATE NAME="lrResizeWeight" TYPE="double" VALUE="-0.0" />
                    <STATE NAME="showAttributesTable" TYPE="boolean" VALUE="true" />
                    <STATE NAME="showElementsTable" TYPE="boolean" VALUE="true" />
                    <STATE NAME="showHidden" TYPE="boolean" VALUE="false" />
                    <STATE NAME="showMethodsInTree" TYPE="boolean" VALUE="false" />
                    <STATE NAME="showObjectsTree" TYPE="boolean" VALUE="true" />
                    <STATE NAME="showPrimitivesInTree" TYPE="boolean" VALUE="false" />
                    <STATE NAME="tbResizeWeight" TYPE="double" VALUE="0.6962025316455697" />
                </SAVE_STATE>
            </XML>
            <STATE NAME="disconnectedCount" TYPE="int" VALUE="0" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.script.GhidraScriptMgrPlugin">
            <ARRAY NAME="BundleHost_ACTIVE" TYPE="boolean">
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
                <A VALUE="false" />
            </ARRAY>
            <ARRAY NAME="BundleHost_ENABLE" TYPE="boolean">
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="false" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
            </ARRAY>
            <ARRAY NAME="BundleHost_FILE" TYPE="string">
                <A VALUE="$GHIDRA_HOME/Features/BytePatterns/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/Jython/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/PyGhidra/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/SwiftDemangler/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/PDB/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/DecompilerDependent/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/GnuDemangler/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/Decompiler/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/WildcardAssembler/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Processors/JVM/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/BSim/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Processors/8051/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Processors/Atmel/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/MicrosoftCodeAnalyzer/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Debug/Debugger-rmi-trace/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/VersionTracking/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Debug/Debugger/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/FunctionID/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/FileFormats/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Processors/DATA/ghidra_scripts" />
                <A VALUE="$USER_HOME/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/Base/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Features/SystemEmulation/ghidra_scripts" />
                <A VALUE="$GHIDRA_HOME/Processors/PIC/ghidra_scripts" />
            </ARRAY>
            <ARRAY NAME="BundleHost_SYSTEM" TYPE="boolean">
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="false" />
                <A VALUE="true" />
                <A VALUE="true" />
                <A VALUE="true" />
            </ARRAY>
            <STATE NAME="FILTER_TEXT" TYPE="string" VALUE="" />
            <ARRAY NAME="Scripts_Actions_Key" TYPE="string" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.debug.service.tracemgr.DebuggerTraceManagerServicePlugin">
            <STATE NAME="autoCloseOnTerminate" TYPE="boolean" VALUE="true" />
            <STATE NAME="saveTracesByDefault" TYPE="boolean" VALUE="true" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.bookmark.BookmarkPlugin">
            <ARRAY NAME="BOOKMARK_TYPES" TYPE="string">
                <A VALUE="BreakpointDisabled" />
                <A VALUE="Warning" />
                <A VALUE="Analysis" />
                <A VALUE="BreakpointEnabled" />
                <A VALUE="Note" />
                <A VALUE="Error" />
                <A VALUE="Info" />
            </ARRAY>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.debug.gui.register.DebuggerRegistersPlugin">
            <STATE NAME="favoritesByCSpec" TYPE="string" VALUE="" />
            <STATE NAME="selectionByCSpec" TYPE="string" VALUE="" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.byteviewer.ByteViewerPlugin">
            <STATE NAME="Bytes Per Line" TYPE="int" VALUE="16" />
            <STATE NAME="Hex view groupsize" TYPE="int" VALUE="1" />
            <STATE NAME="Offset" TYPE="int" VALUE="0" />
            <ARRAY NAME="View Names" TYPE="string">
                <A VALUE="Hex" />
            </ARRAY>
            <SAVE_STATE NAME="View_Widths" TYPE="SaveState">
                <View_Widths>
                    <STATE NAME="Addresses" TYPE="int" VALUE="100" />
                    <STATE NAME="Hex" TYPE="int" VALUE="343" />
                </View_Widths>
            </SAVE_STATE>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.functiongraph.FunctionGraphPlugin">
            <SAVE_STATE NAME="COMPLEX_LAYOUT_NAME" TYPE="SaveState">
                <COMPLEX_LAYOUT_NAME>
                    <STATE NAME="LAYOUT_CLASS_NAME" TYPE="string" VALUE="ghidra.app.plugin.core.functiongraph.graph.layout.DecompilerNestedLayoutProvider" />
                    <STATE NAME="LAYOUT_NAME" TYPE="string" VALUE="Nested Code Layout" />
                </COMPLEX_LAYOUT_NAME>
            </SAVE_STATE>
            <STATE NAME="DISPLAY_POPUPS" TYPE="boolean" VALUE="true" />
            <STATE NAME="DISPLAY_SATELLITE" TYPE="boolean" VALUE="true" />
            <STATE NAME="DOCK_SATELLITE" TYPE="boolean" VALUE="true" />
            <STATE NAME="DOCK_SATELLITE_POSITION" TYPE="string" VALUE="LOWER_RIGHT" />
            <ENUM NAME="EDGE_HOVER_HIGHLIGHT" TYPE="enum" CLASS="ghidra.app.plugin.core.functiongraph.EdgeDisplayType" VALUE="ScopedFlowsFromVertex" />
            <ENUM NAME="EDGE_SELECTION_HIGHLIGHT" TYPE="enum" CLASS="ghidra.app.plugin.core.functiongraph.EdgeDisplayType" VALUE="AllCycles" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.graph.GraphDisplayBrokerPlugin">
            <STATE NAME="ACTIVE_GRAPH_PROVIDER" TYPE="string" VALUE="Default Graph Display" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.codebrowser.CodeBrowserPlugin">
            <XML NAME="Address Break">
                <FORMAT>
                    <ROW>
                        <FIELD NAME="Separator" WIDTH="80" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <XML NAME="Array">
                <FORMAT>
                    <ROW>
                        <FIELD NAME="+" WIDTH="20" ENABLED="true" />
                        <FIELD NAME="Address" WIDTH="100" ENABLED="true" />
                        <FIELD NAME="Field Name" WIDTH="100" ENABLED="true" />
                        <FIELD NAME="Array Values" WIDTH="600" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <STATE NAME="DividerLocation" TYPE="int" VALUE="70" />
            <XML NAME="Function">
                <FORMAT>
                    <ROW>
                        <FIELD WIDTH="200" ENABLED="true" />
                        <FIELD NAME="Function Signature" WIDTH="410" ENABLED="true" />
                        <FIELD NAME="Function Repeatable Comment" WIDTH="300" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="220" ENABLED="true" />
                        <FIELD NAME="Thunked-Function" WIDTH="300" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="220" ENABLED="true" />
                        <FIELD NAME="Function Call-Fixup" WIDTH="300" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="220" ENABLED="true" />
                        <FIELD NAME="Function Tags" WIDTH="300" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="220" ENABLED="true" />
                        <FIELD NAME="Register" WIDTH="300" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <STATE NAME="Hover Mode" TYPE="boolean" VALUE="true" />
            <XML NAME="Instruction/Data">
                <FORMAT>
                    <ROW>
                        <FIELD WIDTH="90" ENABLED="true" />
                        <FIELD NAME="Register Transition" WIDTH="300" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="200" ENABLED="true" />
                        <FIELD NAME="Pre-Comment" WIDTH="440" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="188" ENABLED="true" />
                        <FIELD NAME="Label" WIDTH="350" ENABLED="true" />
                        <FIELD NAME="XRef Header" WIDTH="90" ENABLED="true" />
                        <FIELD NAME="XRef" WIDTH="240" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="200" ENABLED="true" />
                        <FIELD NAME="Source Map" WIDTH="440" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD NAME="+" WIDTH="20" ENABLED="true" />
                        <FIELD NAME="Address" WIDTH="100" ENABLED="true" />
                        <FIELD NAME="Bytes" WIDTH="80" ENABLED="true" />
                        <FIELD WIDTH="10" ENABLED="true" />
                        <FIELD NAME="Parallel ||" WIDTH="20" ENABLED="true" />
                        <FIELD NAME="Mnemonic" WIDTH="70" ENABLED="true" />
                        <FIELD WIDTH="10" ENABLED="true" />
                        <FIELD NAME="Operands" WIDTH="340" ENABLED="true" />
                        <FIELD NAME="EOL Comment" WIDTH="240" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="380" ENABLED="true" />
                        <FIELD NAME="PCode" WIDTH="400" ENABLED="false" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="200" ENABLED="true" />
                        <FIELD NAME="Post-Comment" WIDTH="440" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD NAME="Space" WIDTH="640" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <XML NAME="Open Data">
                <FORMAT>
                    <ROW>
                        <FIELD NAME="+" WIDTH="20" ENABLED="true" />
                        <FIELD NAME="Address" WIDTH="100" ENABLED="true" />
                        <FIELD NAME="Bytes" WIDTH="110" ENABLED="true" />
                        <FIELD NAME="Mnemonic" WIDTH="70" ENABLED="true" />
                        <FIELD NAME="Operands" WIDTH="170" ENABLED="true" />
                        <FIELD NAME="Field Name" WIDTH="100" ENABLED="true" />
                        <FIELD NAME="EOL Comment" WIDTH="140" ENABLED="true" />
                        <FIELD NAME="XRef Header" WIDTH="90" ENABLED="true" />
                        <FIELD NAME="XRef" WIDTH="240" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <XML NAME="Plate">
                <FORMAT>
                    <ROW>
                        <FIELD WIDTH="200" ENABLED="true" />
                        <FIELD NAME="Memory Block Start" WIDTH="440" ENABLED="true" />
                    </ROW>
                    <ROW>
                        <FIELD WIDTH="200" ENABLED="true" />
                        <FIELD NAME="Plate Comment" WIDTH="440" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
            <XML NAME="Variable">
                <FORMAT>
                    <ROW>
                        <FIELD WIDTH="90" ENABLED="true" />
                        <FIELD NAME="Variable Type" WIDTH="110" ENABLED="true" />
                        <FIELD NAME="Variable Location" WIDTH="120" ENABLED="true" />
                        <FIELD NAME="Variable Name" WIDTH="280" ENABLED="true" />
                        <FIELD NAME="Variable XRef Header" WIDTH="90" ENABLED="true" />
                        <FIELD NAME="Variable XRef" WIDTH="130" ENABLED="true" />
                        <FIELD NAME="Variable Comment" WIDTH="110" ENABLED="true" />
                    </ROW>
                </FORMAT>
            </XML>
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.debug.gui.listing.DebuggerListingPlugin">
            <XML NAME="connectedProvider">
                <SAVE_STATE>
                    <STATE NAME="autoDisassemble" TYPE="boolean" VALUE="true" />
                    <STATE NAME="autoSpec" TYPE="string" VALUE="1_READ_VIS_RO_ONCE" />
                    <STATE NAME="followsCurrentThread" TYPE="boolean" VALUE="true" />
                    <XML NAME="formatManager">
                        <formatManager>
                            <XML NAME="Address Break">
                                <FORMAT>
                                    <ROW>
                                        <FIELD NAME="Separator" WIDTH="80" ENABLED="true" />
                                    </ROW>
                                </FORMAT>
                            </XML>
                            <XML NAME="Array">
                                <FORMAT>
                                    <ROW>
                                        <FIELD NAME="+" WIDTH="20" ENABLED="true" />
                                        <FIELD NAME="Address" WIDTH="100" ENABLED="true" />
                                        <FIELD NAME="Field Name" WIDTH="100" ENABLED="true" />
                                        <FIELD NAME="Array Values" WIDTH="600" ENABLED="true" />
                                    </ROW>
                                </FORMAT>
                            </XML>
                            <XML NAME="Function">
                                <FORMAT>
                                    <ROW>
                                        <FIELD WIDTH="200" ENABLED="true" />
                                        <FIELD NAME="Function Signature" WIDTH="410" ENABLED="true" />
                                        <FIELD NAME="Function Repeatable Comment" WIDTH="300" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD WIDTH="220" ENABLED="true" />
                                        <FIELD NAME="Thunked-Function" WIDTH="300" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD WIDTH="220" ENABLED="true" />
                                        <FIELD NAME="Function Call-Fixup" WIDTH="300" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD WIDTH="220" ENABLED="true" />
                                        <FIELD NAME="Function Tags" WIDTH="300" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD WIDTH="220" ENABLED="true" />
                                        <FIELD NAME="Register" WIDTH="300" ENABLED="true" />
                                    </ROW>
                                </FORMAT>
                            </XML>
                            <XML NAME="Instruction/Data">
                                <FORMAT>
                                    <ROW>
                                        <FIELD WIDTH="90" ENABLED="true" />
                                        <FIELD NAME="Register Transition" WIDTH="300" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD WIDTH="200" ENABLED="true" />
                                        <FIELD NAME="Pre-Comment" WIDTH="440" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD WIDTH="188" ENABLED="true" />
                                        <FIELD NAME="Label" WIDTH="350" ENABLED="true" />
                                        <FIELD NAME="XRef Header" WIDTH="90" ENABLED="true" />
                                        <FIELD NAME="XRef" WIDTH="240" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD WIDTH="200" ENABLED="true" />
                                        <FIELD NAME="Source Map" WIDTH="440" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD NAME="+" WIDTH="20" ENABLED="true" />
                                        <FIELD NAME="Address" WIDTH="100" ENABLED="true" />
                                        <FIELD NAME="Bytes" WIDTH="80" ENABLED="true" />
                                        <FIELD WIDTH="10" ENABLED="true" />
                                        <FIELD NAME="Parallel ||" WIDTH="20" ENABLED="true" />
                                        <FIELD NAME="Mnemonic" WIDTH="70" ENABLED="true" />
                                        <FIELD WIDTH="10" ENABLED="true" />
                                        <FIELD NAME="Operands" WIDTH="340" ENABLED="true" />
                                        <FIELD NAME="EOL Comment" WIDTH="240" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD WIDTH="380" ENABLED="true" />
                                        <FIELD NAME="PCode" WIDTH="400" ENABLED="false" />
                                    </ROW>
                                    <ROW>
                                        <FIELD WIDTH="200" ENABLED="true" />
                                        <FIELD NAME="Post-Comment" WIDTH="440" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD NAME="Space" WIDTH="640" ENABLED="true" />
                                    </ROW>
                                </FORMAT>
                            </XML>
                            <XML NAME="Open Data">
                                <FORMAT>
                                    <ROW>
                                        <FIELD NAME="+" WIDTH="20" ENABLED="true" />
                                        <FIELD NAME="Address" WIDTH="100" ENABLED="true" />
                                        <FIELD NAME="Bytes" WIDTH="110" ENABLED="true" />
                                        <FIELD NAME="Mnemonic" WIDTH="70" ENABLED="true" />
                                        <FIELD NAME="Operands" WIDTH="170" ENABLED="true" />
                                        <FIELD NAME="Field Name" WIDTH="100" ENABLED="true" />
                                        <FIELD NAME="EOL Comment" WIDTH="140" ENABLED="true" />
                                        <FIELD NAME="XRef Header" WIDTH="90" ENABLED="true" />
                                        <FIELD NAME="XRef" WIDTH="240" ENABLED="true" />
                                    </ROW>
                                </FORMAT>
                            </XML>
                            <XML NAME="Plate">
                                <FORMAT>
                                    <ROW>
                                        <FIELD WIDTH="200" ENABLED="true" />
                                        <FIELD NAME="Memory Block Start" WIDTH="440" ENABLED="true" />
                                    </ROW>
                                    <ROW>
                                        <FIELD WIDTH="200" ENABLED="true" />
                                        <FIELD NAME="Plate Comment" WIDTH="440" ENABLED="true" />
                                    </ROW>
                                </FORMAT>
                            </XML>
                            <XML NAME="Variable">
                                <FORMAT>
                                    <ROW>
                                        <FIELD WIDTH="90" ENABLED="true" />
                                        <FIELD NAME="Variable Type" WIDTH="110" ENABLED="true" />
                                        <FIELD NAME="Variable Location" WIDTH="120" ENABLED="true" />
                                        <FIELD NAME="Variable Name" WIDTH="280" ENABLED="true" />
                                        <FIELD NAME="Variable XRef Header" WIDTH="90" ENABLED="true" />
                                        <FIELD NAME="Variable XRef" WIDTH="130" ENABLED="true" />
                                        <FIELD NAME="Variable Comment" WIDTH="110" ENABLED="true" />
                                    </ROW>
                                </FORMAT>
                            </XML>
                        </formatManager>
                    </XML>
                    <STATE NAME="spec" TYPE="string" VALUE="TRACK_PC" />
                </SAVE_STATE>
            </XML>
            <STATE NAME="disconnectedCount" TYPE="int" VALUE="0" />
        </PLUGIN_STATE>
        <PLUGIN_STATE CLASS="ghidra.app.plugin.core.debug.gui.modules.DebuggerModulesPlugin">
            <STATE NAME="autoMapSpec" TYPE="string" VALUE="1_MAP_BY_MODULE" />
            <STATE NAME="filterSectionsByModules" TYPE="boolean" VALUE="false" />
            <STATE NAME="showSectionsTable" TYPE="boolean" VALUE="true" />
        </PLUGIN_STATE>
        <ROOT_NODE X_POS="-5" Y_POS="27" WIDTH="1077" HEIGHT="876" EX_STATE="6" FOCUSED_OWNER="CodeBrowserPlugin" FOCUSED_NAME="Listing" FOCUSED_TITLE="Listing:  cimg">
            <SPLIT_NODE WIDTH="1067" HEIGHT="761" DIVIDER_LOCATION="878" ORIENTATION="HORIZONTAL">
                <SPLIT_NODE WIDTH="933" HEIGHT="739" DIVIDER_LOCATION="139" ORIENTATION="HORIZONTAL">
                    <COMPONENT_NODE TOP_INFO="0">
                        <COMPONENT_INFO NAME="Modules" OWNER="DebuggerModulesPlugin" TITLE="Modules" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717485" />
                    </COMPONENT_NODE>
                    <SPLIT_NODE WIDTH="1067" HEIGHT="761" DIVIDER_LOCATION="772" ORIENTATION="VERTICAL">
                        <SPLIT_NODE WIDTH="1067" HEIGHT="584" DIVIDER_LOCATION="703" ORIENTATION="VERTICAL">
                            <SPLIT_NODE WIDTH="933" HEIGHT="396" DIVIDER_LOCATION="220" ORIENTATION="HORIZONTAL">
                                <COMPONENT_NODE TOP_INFO="1">
                                    <COMPONENT_INFO NAME="Model" OWNER="DebuggerModelPlugin" TITLE="Model" ACTIVE="false" GROUP="Debugger.Core" INSTANCE_ID="3691611598508717496" />
                                    <COMPONENT_INFO NAME="Registers" OWNER="DebuggerRegistersPlugin" TITLE="Registers" ACTIVE="false" GROUP="Debugger.Core" INSTANCE_ID="3691611598508717500" />
                                </COMPONENT_NODE>
                                <SPLIT_NODE WIDTH="933" HEIGHT="396" DIVIDER_LOCATION="209" ORIENTATION="HORIZONTAL">
                                    <COMPONENT_NODE TOP_INFO="0">
                                        <COMPONENT_INFO NAME="Stack" OWNER="DebuggerStackPlugin" TITLE="Stack" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717479" />
                                    </COMPONENT_NODE>
                                    <SPLIT_NODE WIDTH="933" HEIGHT="408" DIVIDER_LOCATION="577" ORIENTATION="VERTICAL">
                                        <SPLIT_NODE WIDTH="933" HEIGHT="233" DIVIDER_LOCATION="736" ORIENTATION="HORIZONTAL">
                                            <SPLIT_NODE WIDTH="684" HEIGHT="226" DIVIDER_LOCATION="284" ORIENTATION="HORIZONTAL">
                                                <COMPONENT_NODE TOP_INFO="0">
                                                    <COMPONENT_INFO NAME="Connections" OWNER="TraceRmiConnectionManagerPlugin" TITLE="Connections" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611576140494262" />
                                                </COMPONENT_NODE>
                                                <SPLIT_NODE WIDTH="1221" HEIGHT="783" DIVIDER_LOCATION="498" ORIENTATION="VERTICAL">
                                                    <SPLIT_NODE WIDTH="1621" HEIGHT="816" DIVIDER_LOCATION="148" ORIENTATION="VERTICAL">
                                                        <COMPONENT_NODE TOP_INFO="0">
                                                            <COMPONENT_INFO NAME="Entropy" OWNER="EntropyPlugin" TITLE="Entropy" ACTIVE="false" GROUP="Header" INSTANCE_ID="3207819926581772885" />
                                                            <COMPONENT_INFO NAME="Overview" OWNER="OverviewPlugin" TITLE="Overview" ACTIVE="false" GROUP="Header" INSTANCE_ID="3207819926581772883" />
                                                        </COMPONENT_NODE>
                                                        <SPLIT_NODE WIDTH="1627" HEIGHT="820" DIVIDER_LOCATION="143" ORIENTATION="HORIZONTAL">
                                                            <SPLIT_NODE WIDTH="232" HEIGHT="820" DIVIDER_LOCATION="640" ORIENTATION="VERTICAL">
                                                                <SPLIT_NODE WIDTH="232" HEIGHT="522" DIVIDER_LOCATION="502" ORIENTATION="VERTICAL">
                                                                    <COMPONENT_NODE TOP_INFO="0">
                                                                        <COMPONENT_INFO NAME="Program Tree" OWNER="ProgramTreePlugin" TITLE="Program Trees" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611576140494268" />
                                                                    </COMPONENT_NODE>
                                                                    <COMPONENT_NODE TOP_INFO="0">
                                                                        <COMPONENT_INFO NAME="Symbol Tree" OWNER="SymbolTreePlugin" TITLE="Symbol Tree" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611576140494263" />
                                                                    </COMPONENT_NODE>
                                                                </SPLIT_NODE>
                                                                <COMPONENT_NODE TOP_INFO="0">
                                                                    <COMPONENT_INFO NAME="DataTypes Provider" OWNER="DataTypeManagerPlugin" TITLE="Data Type Manager" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717482" />
                                                                </COMPONENT_NODE>
                                                            </SPLIT_NODE>
                                                            <SPLIT_NODE WIDTH="1221" HEIGHT="388" DIVIDER_LOCATION="775" ORIENTATION="VERTICAL">
                                                                <SPLIT_NODE WIDTH="1140" HEIGHT="783" DIVIDER_LOCATION="705" ORIENTATION="VERTICAL">
                                                                    <SPLIT_NODE WIDTH="1221" HEIGHT="783" DIVIDER_LOCATION="597" ORIENTATION="HORIZONTAL">
                                                                        <SPLIT_NODE WIDTH="100" HEIGHT="100" DIVIDER_LOCATION="0" ORIENTATION="HORIZONTAL">
                                                                            <COMPONENT_NODE TOP_INFO="0">
                                                                                <COMPONENT_INFO NAME="Listing" OWNER="CodeBrowserPlugin" TITLE="Listing:  cimg" ACTIVE="true" GROUP="Core" INSTANCE_ID="3691611597887960484" />
                                                                            </COMPONENT_NODE>
                                                                            <COMPONENT_NODE TOP_INFO="0">
                                                                                <COMPONENT_INFO NAME="Listing" OWNER="DebuggerListingPlugin" TITLE="Dynamic" ACTIVE="false" GROUP="Core" INSTANCE_ID="3691611597887960486" />
                                                                            </COMPONENT_NODE>
                                                                        </SPLIT_NODE>
                                                                        <COMPONENT_NODE TOP_INFO="6">
                                                                            <COMPONENT_INFO NAME="Decompiler" OWNER="DecompilePlugin" TITLE="Decompiler" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611576140494269" />
                                                                            <COMPONENT_INFO NAME="Bytes" OWNER="ByteViewerPlugin" TITLE="Bytes: cimg" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611576140494271" />
                                                                            <COMPONENT_INFO NAME="Data Window" OWNER="DataWindowPlugin" TITLE="Defined Data" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717491" />
                                                                            <COMPONENT_INFO NAME="Defined Strings" OWNER="ViewStringsPlugin" TITLE="Defined Strings" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717499" />
                                                                            <COMPONENT_INFO NAME="Equates Table" OWNER="EquateTablePlugin" TITLE="Equates Table" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611597887960482" />
                                                                            <COMPONENT_INFO NAME="External Programs" OWNER="ReferencesPlugin" TITLE="External Programs" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611597887960485" />
                                                                            <COMPONENT_INFO NAME="Functions Window" OWNER="FunctionWindowPlugin" TITLE="Functions" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611597887960489" />
                                                                            <COMPONENT_INFO NAME="Relocation Table" OWNER="RelocationTablePlugin" TITLE="Relocation Table" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717498" />
                                                                        </COMPONENT_NODE>
                                                                    </SPLIT_NODE>
                                                                    <SPLIT_NODE WIDTH="1386" HEIGHT="189" DIVIDER_LOCATION="495" ORIENTATION="HORIZONTAL">
                                                                        <COMPONENT_NODE TOP_INFO="0">
                                                                            <COMPONENT_INFO NAME="Data Type Preview" OWNER="DataTypePreviewPlugin" TITLE="Data Type Preview" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717478" />
                                                                        </COMPONENT_NODE>
                                                                        <COMPONENT_NODE TOP_INFO="0">
                                                                            <COMPONENT_INFO NAME="Virtual Disassembler - Current Instruction" OWNER="DisassembledViewPlugin" TITLE="Disassembled View" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611597887960481" />
                                                                        </COMPONENT_NODE>
                                                                    </SPLIT_NODE>
                                                                </SPLIT_NODE>
                                                                <COMPONENT_NODE TOP_INFO="1">
                                                                    <COMPONENT_INFO NAME="Console" OWNER="ConsolePlugin" TITLE="Console" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611576140494270" />
                                                                    <COMPONENT_INFO NAME="Bookmarks" OWNER="BookmarkPlugin" TITLE="Bookmarks" ACTIVE="false" GROUP="Core.Bookmarks" INSTANCE_ID="3691611576140494267" />
                                                                </COMPONENT_NODE>
                                                            </SPLIT_NODE>
                                                        </SPLIT_NODE>
                                                    </SPLIT_NODE>
                                                    <COMPONENT_NODE TOP_INFO="0">
                                                        <COMPONENT_INFO NAME="Function Call Trees" OWNER="CallTreePlugin" TITLE="Function Call Trees: main" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611576140494264" />
                                                    </COMPONENT_NODE>
                                                </SPLIT_NODE>
                                            </SPLIT_NODE>
                                            <COMPONENT_NODE TOP_INFO="0">
                                                <COMPONENT_INFO NAME="Watches" OWNER="DebuggerWatchesPlugin" TITLE="Watches" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611576140494261" />
                                            </COMPONENT_NODE>
                                        </SPLIT_NODE>
                                        <COMPONENT_NODE TOP_INFO="0">
                                            <COMPONENT_INFO NAME="Debug Console" OWNER="DebuggerConsolePlugin" TITLE="Debug Console" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717481" />
                                        </COMPONENT_NODE>
                                    </SPLIT_NODE>
                                </SPLIT_NODE>
                            </SPLIT_NODE>
                            <COMPONENT_NODE TOP_INFO="0">
                                <COMPONENT_INFO NAME="Threads" OWNER="DebuggerThreadsPlugin" TITLE="Threads" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717484" />
                            </COMPONENT_NODE>
                        </SPLIT_NODE>
                        <COMPONENT_NODE TOP_INFO="0">
                            <COMPONENT_INFO NAME="Regions" OWNER="DebuggerRegionsPlugin" TITLE="Regions" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717494" />
                        </COMPONENT_NODE>
                    </SPLIT_NODE>
                </SPLIT_NODE>
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Breakpoints" OWNER="DebuggerBreakpointsPlugin" TITLE="Breakpoints" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717497" />
                </COMPONENT_NODE>
            </SPLIT_NODE>
            <WINDOW_NODE X_POS="426" Y_POS="178" WIDTH="1033" HEIGHT="689">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Script Manager" OWNER="GhidraScriptMgrPlugin" TITLE="Script Manager" ACTIVE="false" GROUP="Script Group" INSTANCE_ID="3691611576140494265" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="-309" Y_POS="153" WIDTH="927" HEIGHT="370">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Memory Map" OWNER="MemoryMapPlugin" TITLE="Memory Map" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611576140494259" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="-70" Y_POS="137" WIDTH="1020" HEIGHT="1038">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Function Graph" OWNER="FunctionGraphPlugin" TITLE="Function Graph" ACTIVE="false" GROUP="Function Graph" INSTANCE_ID="3691611598508717501" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="550" Y_POS="206" WIDTH="655" HEIGHT="509">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Register Manager" OWNER="RegisterPlugin" TITLE="Register Manager" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611597887960488" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="287" Y_POS="186" WIDTH="1424" HEIGHT="666">
                <SPLIT_NODE WIDTH="1408" HEIGHT="559" DIVIDER_LOCATION="573" ORIENTATION="HORIZONTAL">
                    <COMPONENT_NODE TOP_INFO="0">
                        <COMPONENT_INFO NAME="Symbol Table" OWNER="SymbolTablePlugin" TITLE="Symbol Table" ACTIVE="false" GROUP="symbolTable" INSTANCE_ID="3691611598508717492" />
                    </COMPONENT_NODE>
                    <COMPONENT_NODE TOP_INFO="0">
                        <COMPONENT_INFO NAME="Symbol References" OWNER="SymbolTablePlugin" TITLE="Symbol References" ACTIVE="false" GROUP="symbolTable" INSTANCE_ID="3691611598508717493" />
                    </COMPONENT_NODE>
                </SPLIT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="-1" Y_POS="-1" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Checksum Generator" OWNER="ComputeChecksumsPlugin" TITLE="Checksum Generator" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611597887960483" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="-1" Y_POS="-1" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Function Tags" OWNER="FunctionTagPlugin" TITLE="Function Tags" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717483" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="-1" Y_POS="-1" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Comment Window" OWNER="CommentWindowPlugin" TITLE="Comments" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717490" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="-1" Y_POS="-1" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Python" OWNER="InterpreterPanelPlugin" TITLE="Python" ACTIVE="false" GROUP="Default" INSTANCE_ID="3207819978370941531" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="0" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Source Files and Transforms" OWNER="SourceFilesTablePlugin" TITLE="Source Files and Transforms" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611597887960487" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="0" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Bundle Manager" OWNER="GhidraScriptMgrPlugin" TITLE="Bundle Manager" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611576140494266" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="0" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Jython" OWNER="Jython" TITLE="Jython" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717486" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="0" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="PyGhidra" OWNER="PyGhidra" TITLE="PyGhidra" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717488" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="26" Y_POS="27" WIDTH="1014" HEIGHT="1081">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Function Call Graph" OWNER="FunctionCallGraphPlugin" TITLE="Function Call Graph" ACTIVE="false" GROUP="Function Call Graph" INSTANCE_ID="3691611598508717480" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="0" Y_POS="0" WIDTH="0" HEIGHT="0">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Memory" OWNER="DebuggerMemoryBytesPlugin" TITLE="Memory" ACTIVE="false" GROUP="disconnected" INSTANCE_ID="3691611576140494258" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="80" Y_POS="170" WIDTH="971" HEIGHT="581">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Memview" OWNER="DebuggerMemviewPlugin" TITLE="Memview" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717489" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="332" Y_POS="190" WIDTH="466" HEIGHT="540">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Time" OWNER="DebuggerTimePlugin" TITLE="Time" ACTIVE="false" GROUP="Default" INSTANCE_ID="3691611598508717487" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
            <WINDOW_NODE X_POS="332" Y_POS="190" WIDTH="466" HEIGHT="540">
                <COMPONENT_NODE TOP_INFO="0">
                    <COMPONENT_INFO NAME="Static Mappings" OWNER="DebuggerStaticMappingPlugin" TITLE="Static Mappings" ACTIVE="true" GROUP="Default" INSTANCE_ID="3691611598508717495" />
                </COMPONENT_NODE>
            </WINDOW_NODE>
        </ROOT_NODE>
        <PREFERENCES>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.breakpoint.DebuggerBreakpointsProvider$BreakpointLocationTableModel:State:Name:Address:Trace:Threads:Comment:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.State" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Name" WIDTH="18" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Address" WIDTH="17" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Trace" WIDTH="18" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Threads" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Comment" WIDTH="17" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Sleigh" WIDTH="30" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="2" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.memview.MemviewMapModel:Name:Start Address:End Address:Start Time:End Time:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="90" VISIBLE="true" />
                        <COLUMN NAME="Start Address" WIDTH="90" VISIBLE="true" />
                        <COLUMN NAME="End Address" WIDTH="90" VISIBLE="true" />
                        <COLUMN NAME="Start Time" WIDTH="90" VISIBLE="true" />
                        <COLUMN NAME="End Time" WIDTH="90" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.symtable.SymbolReferenceModel:From Location:Label:Subroutine:Access:From Preview:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.ReferenceFromAddressTableColumn" WIDTH="119" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceFromLabelTableColumn" WIDTH="119" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolReferenceModel$SubroutineTableColumn" WIDTH="118" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolReferenceModel$AccessTableColumn" WIDTH="86" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceFromPreviewTableColumn" WIDTH="151" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceFromFunctionTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceFromBytesTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceToPreviewTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceToBytesTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.symtable.SymbolTableModel:Name:Location:Symbol Type:Data Type:Namespace:Source:Reference Count:Offcut Ref Count:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$NameTableColumn" WIDTH="260" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$LocationTableColumn" WIDTH="168" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn" WIDTH="166" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$DataTypeTableColumn" WIDTH="174" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$NamespaceTableColumn" WIDTH="152" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$SourceTableColumn" WIDTH="170" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$ReferenceCountTableColumn" WIDTH="148" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$OffuctReferenceCountTableColumn" WIDTH="147" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$PinnedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.symtable.SymbolTableModel$UserTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn" WIDTH="75" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="3" SORT_DIRECTION="descending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.model.PathTableModel:Path:Key:Value:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.model.columns.TracePathStringColumn.Path" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.model.columns.TracePathLastKeyColumn.Key" WIDTH="32" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.model.columns.TracePathValueColumn.Value" WIDTH="32" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.model.columns.TracePathLastLifespanColumn.Life" WIDTH="31" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.model.columns.TracePathLastLifespanPlotColumn.Plot" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="3" SORT_DIRECTION="ascending" SORT_ORDER="2" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.equate.EquateTableModel:Name:Value:# Refs:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.equate.EquateTableModel$EquateNameColumn.Name" WIDTH="218" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.equate.EquateTableModel$EquateValueColumn.Value" WIDTH="218" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.equate.EquateTableModel$EquateReferenceCountColumn.# Refs" WIDTH="218" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.equate.EquateTableModel$IsEnumBasedEquateColumn.Is Enum-Based" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.table.GTableFilterPanel$SortedTableModelWrapper:In::Name:Description:Category:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="In" WIDTH="30" VISIBLE="true" />
                        <COLUMN NAME="" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="Name" WIDTH="209" VISIBLE="true" />
                        <COLUMN NAME="Description" WIDTH="277" VISIBLE="true" />
                        <COLUMN NAME="Category" WIDTH="141" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.functionwindow.FunctionTableModel:Name:Location:Function Signature:Function Size:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.functionwindow.FunctionTableModel$NameTableColumn.Name" WIDTH="184" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="27" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn.Function Signature" WIDTH="79" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn.Function Size" WIDTH="184" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionTagTableColumn.Tags" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.IsFunctionInlineTableColumn.Inline" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.IsFunctionNonReturningTableColumn.Non-returning" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.IsFunctionVarargsTableColumn.Varargs" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.IsFunctionCustomStorageTableColumn.Custom Storage" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="200" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn.Function Calling Convention" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn.Function Purge" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.register.RegisterValuesPanel$RegisterValuesTableModel:Start Address:End Address:Value:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Start Address" WIDTH="150" VISIBLE="true" />
                        <COLUMN NAME="End Address" WIDTH="150" VISIBLE="true" />
                        <COLUMN NAME="Value" WIDTH="150" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="GRAPH_DISPLAY_SERVICE" />
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.console.DebuggerConsoleProvider$LogTableModel:Icon:Message:Actions:Time:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Icon" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Message" WIDTH="379" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Actions" WIDTH="279" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Time" WIDTH="245" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="descending" SORT_ORDER="1" />
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="3" SORT_DIRECTION="descending" SORT_ORDER="2" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel:Type:Category:Description:Location:Label:Code Unit:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$TypeTableColumn.Type" WIDTH="452" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$CategoryTableColumn.Category" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$DescriptionTableColumn.Description" WIDTH="197" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn.Location" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn.Label" WIDTH="196" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.CodeUnitTableColumn.Code Unit" WIDTH="154" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn.Preview" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn.Mem Type" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn.Function Name" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn.Byte Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn.Namespace" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn.Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.EOLCommentTableColumn.EOL Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn.Param Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn.Offcut Reference Count" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn.Mem Block" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn.Bytes" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn.Symbol Source" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn.Symbol Type" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.references.ExternalNamesTableModel:Name:Ghidra Program:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="219" VISIBLE="true" />
                        <COLUMN NAME="Ghidra Program" WIDTH="218" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="KNOWN_EXTENSIONS">
                <ARRAY NAME="KNOWN_EXTENSIONS" TYPE="string" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel:Installation Status:Status:Name:Description:Category:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel$PluginInstalledColumn" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel$PluginStatusColumn" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel$PluginNameColumn" WIDTH="211" VISIBLE="true" />
                        <COLUMN NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel$PluginDescriptionColumn" WIDTH="211" VISIBLE="true" />
                        <COLUMN NAME="ghidra.framework.plugintool.dialog.PluginInstallerTableModel$PluginCategoryColumn" WIDTH="210" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.register.DebuggerRegistersProvider$RegistersTableModel:Fav:#:Name:Value:Type:Repr:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Fav" WIDTH="15" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.#" WIDTH="15" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Name" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Value" WIDTH="47" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Type" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Repr" WIDTH="47" VISIBLE="true" />
                        <COLUMN NAME="ghidra.taint.gui.field.TaintDebuggerRegisterColumnFactory$1.Taint" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="descending" SORT_ORDER="1" />
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="2" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerStaticMappingProvider$MappingTableModel:Dynamic Address:Static Program:Static Address:Length:Shift:Lifespan:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Dynamic Address" WIDTH="75" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Static Program" WIDTH="75" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Static Address" WIDTH="75" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Length" WIDTH="75" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Shift" WIDTH="75" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Lifespan" WIDTH="75" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.memory.MemoryMapModel:Name:Start:End:Length:R:W:X:Volatile:Type:Initialized:Source:Comment:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="Start" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="End" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="Length" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="R" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="W" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="X" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="Volatile" WIDTH="50" VISIBLE="true" />
                        <COLUMN NAME="Type" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="Initialized" WIDTH="60" VISIBLE="true" />
                        <COLUMN NAME="Source" WIDTH="103" VISIBLE="true" />
                        <COLUMN NAME="Comment" WIDTH="102" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.functionwindow.FunctionTableModel:Label:Location:Function Signature:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn" WIDTH="148" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn" WIDTH="124" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn" WIDTH="148" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn" WIDTH="75" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel:Snap:Timestamp:Event Thread:Schedule:Description:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Snap" WIDTH="35" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Timestamp" WIDTH="164" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Event Thread" WIDTH="35" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Schedule" WIDTH="51" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Description" WIDTH="165" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.filechooser.DirectoryTableModel:Filename:Size:Modified:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Filename" WIDTH="164" VISIBLE="true" />
                        <COLUMN NAME="Size" WIDTH="165" VISIBLE="true" />
                        <COLUMN NAME="Modified" WIDTH="164" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.analysis.AnalysisEnablementTableModel:Enabled:Analyzer:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.analysis.AnalysisEnablementTableModel$AnalyzerEnabledColumn.Enabled" WIDTH="60" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.analysis.AnalysisEnablementTableModel$AnalyzerNameColumn.Analyzer" WIDTH="316" VISIBLE="true" />
                        <TABLE_SORT_STATE />
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.datawindow.DataTableModel:Data:Location:Type:Size:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.datawindow.DataTableModel$DataValueTableColumn" WIDTH="122" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn" WIDTH="98" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.datawindow.DataTableModel$TypeTableColumn" WIDTH="122" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.datawindow.DataTableModel$SizeTableColumn" WIDTH="78" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn" WIDTH="75" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerSectionsPanel$SectionTableModel:Path:Start:End:Name:Module Name:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerSectionsPanel$SectionPathColumn.Path" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerSectionsPanel$SectionStartColumn.Start" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerSectionsPanel$SectionEndColumn.End" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerSectionsPanel$SectionNameColumn.Name" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerSectionsPanel$SectionModuleNameColumn.Module Name" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerSectionsPanel$SectionLengthColumn.Length" WIDTH="25" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.datapreview.DataTypePreviewPlugin$MyTableModel:Name:Preview:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="682" VISIBLE="true" />
                        <COLUMN NAME="Preview" WIDTH="681" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.equate.EquateReferenceTableModel:Ref Addr:Op Index:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.equate.EquateReferenceTableModel$EquateReferenceAddressColumn.Ref Addr" WIDTH="277" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.equate.EquateReferenceTableModel$EquateOperandIndexColumn.Op Index" WIDTH="277" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.table.GTableFilterPanel$SortedTableModelWrapper:Action Name:KeyBinding:Plugin Name:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Action Name" WIDTH="359" VISIBLE="true" />
                        <COLUMN NAME="KeyBinding" WIDTH="180" VISIBLE="true" />
                        <COLUMN NAME="Plugin Name" WIDTH="179" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel:Type:Category:Description:Location:Label:Preview:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$TypeTableColumn" WIDTH="189" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$CategoryTableColumn" WIDTH="204" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.bookmark.BookmarkTableModel$DescriptionTableColumn" WIDTH="313" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn" WIDTH="204" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn" WIDTH="189" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn" WIDTH="263" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn" WIDTH="15" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn" WIDTH="15" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.watch.DebuggerWatchesProvider$WatchTableModel:Expression:Address:Symbol:Value:Type:Repr:Error:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Expression" WIDTH="133" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Address" WIDTH="133" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Symbol" WIDTH="132" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Value" WIDTH="133" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Type" WIDTH="132" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Repr" WIDTH="132" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Error" WIDTH="132" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.model.ObjectTableModel:Key:Value:Life:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.model.columns.TraceValueKeyColumn.Key" WIDTH="32" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.model.columns.TraceValueValColumn.Value" WIDTH="32" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.model.columns.TraceValueLifeColumn.Life" WIDTH="31" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.model.columns.TraceValueLifePlotColumn.Plot" WIDTH="500" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="ascending" SORT_ORDER="2" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="FunctionWindowPlugin_Selection Navigation Action">
                <STATE NAME="SELECTION_NAVIGATION_SELECTED_STATE" TYPE="boolean" VALUE="true" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.breakpoint.DebuggerBreakpointsProvider$LogicalBreakpointTableModel:State:Name:Address:Image:Length:Kinds:Locations:Sleigh:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.State" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Name" WIDTH="15" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Address" WIDTH="15" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Image" WIDTH="15" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Length" WIDTH="15" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Kinds" WIDTH="15" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Locations" WIDTH="15" VISIBLE="true" />
                        <COLUMN NAME="docking.widgets.table.DefaultEnumeratedColumnTableModel$EnumeratedDynamicTableColumn.Sleigh" WIDTH="30" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="3" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="ascending" SORT_ORDER="2" />
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="3" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="BookmarkPlugin_Selection Navigation Action">
                <STATE NAME="SELECTION_NAVIGATION_SELECTED_STATE" TYPE="boolean" VALUE="true" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="SymbolTablePlugin">
                <STATE NAME="SELECTION_NAVIGATION_SELECTED_STATE" TYPE="boolean" VALUE="true" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerModulesPanel$ModuleTableModel:Path:Base:Max:Name:Mapping:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerModulesPanel$ModulePathColumn.Path" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerModulesPanel$ModuleBaseColumn.Base" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerModulesPanel$ModuleMaxColumn.Max" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerModulesPanel$ModuleNameColumn.Name" WIDTH="24" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerModulesPanel$ModuleMappingColumn.Mapping" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.modules.DebuggerModulesPanel$ModuleLengthColumn.Length" WIDTH="25" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.thread.DebuggerThreadsPanel$ThreadTableModel:Path:Name:PC:Function:Module:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.thread.DebuggerThreadsPanel$ThreadPathColumn.Path" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.thread.DebuggerThreadsPanel$ThreadNameColumn.Name" WIDTH="185" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.thread.DebuggerThreadsPanel$ThreadPcColumn.PC" WIDTH="185" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.thread.DebuggerThreadsPanel$ThreadFunctionColumn.Function" WIDTH="185" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.thread.DebuggerThreadsPanel$ThreadModuleColumn.Module" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.thread.DebuggerThreadsPanel$ThreadSpColumn.SP" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.thread.DebuggerThreadsPanel$ThreadStateColumn.State" WIDTH="186" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.thread.DebuggerThreadsPanel$ThreadCommentColumn.Comment" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.thread.DebuggerThreadsPanel$ThreadPlotColumn.Plot" WIDTH="186" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel:Location:String:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn" WIDTH="210" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.strings.ViewStringsTableModel$DataValueColumn" WIDTH="210" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SymbolTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemorySectionProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionBodySizeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionSignatureTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.NamespaceTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.SourceTypeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionPurgeTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.MemoryTypeProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.LabelTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ByteCountProgramLocationBasedTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionCallingConventionTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.PreviewTableColumn" WIDTH="75" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="EquateTablePlugin_Selection Navigation Action">
                <STATE NAME="SELECTION_NAVIGATION_SELECTED_STATE" TYPE="boolean" VALUE="true" />
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.memory.MemoryMapModel:Name:Start:End:Length:R:W:X:Volatile:Artificial:Overlayed Space:Type:Initialized:Byte Source:Source:Comment:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Name" WIDTH="74" VISIBLE="true" />
                        <COLUMN NAME="Start" WIDTH="74" VISIBLE="true" />
                        <COLUMN NAME="End" WIDTH="73" VISIBLE="true" />
                        <COLUMN NAME="Length" WIDTH="74" VISIBLE="true" />
                        <COLUMN NAME="R" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="W" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="X" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="Volatile" WIDTH="65" VISIBLE="true" />
                        <COLUMN NAME="Artificial" WIDTH="65" VISIBLE="true" />
                        <COLUMN NAME="Overlayed Space" WIDTH="73" VISIBLE="true" />
                        <COLUMN NAME="Type" WIDTH="82" VISIBLE="true" />
                        <COLUMN NAME="Initialized" WIDTH="25" VISIBLE="true" />
                        <COLUMN NAME="Byte Source" WIDTH="74" VISIBLE="true" />
                        <COLUMN NAME="Source" WIDTH="74" VISIBLE="true" />
                        <COLUMN NAME="Comment" WIDTH="73" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="1" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.table.GTableFilterPanel$SortedTableModelWrapper:In Tool:Status:Filename:Description:Key Binding:Full Path:Category:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="In Tool" WIDTH="50" VISIBLE="true" />
                        <COLUMN NAME="Status" WIDTH="50" VISIBLE="true" />
                        <COLUMN NAME="Filename" WIDTH="147" VISIBLE="true" />
                        <COLUMN NAME="Description" WIDTH="245" VISIBLE="true" />
                        <COLUMN NAME="Key Binding" WIDTH="100" VISIBLE="true" />
                        <COLUMN NAME="Full Path" WIDTH="122" VISIBLE="true" />
                        <COLUMN NAME="Category" WIDTH="122" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="2" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.stack.DebuggerStackPanel$StackTableModel:Level:PC:Function:Module:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.stack.DebuggerStackPanel$FrameLevelColumn.Level" WIDTH="21" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.stack.DebuggerStackPanel$FramePcColumn.PC" WIDTH="42" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.stack.DebuggerStackPanel$FrameFunctionColumn.Function" WIDTH="41" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.stack.DebuggerStackPanel$FrameModuleColumn.Module" WIDTH="41" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.reloc.RelocationTableModel:Location:Type:Values:Original Bytes:Name:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.util.table.field.AddressTableColumn" WIDTH="87" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.reloc.RelocationTableModel$RelocationTypeColumn" WIDTH="88" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.reloc.RelocationTableModel$RelocationValueColumn" WIDTH="87" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.reloc.RelocationTableModel$RelocationBytesColumn" WIDTH="88" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.reloc.RelocationTableModel$RelocationNameColumn" WIDTH="87" VISIBLE="true" />
                        <COLUMN NAME="ghidra.util.table.field.OffcutReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.ReferenceCountToAddressTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionParameterCountTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.FunctionNameTableColumn" WIDTH="75" VISIBLE="false" />
                        <COLUMN NAME="ghidra.util.table.field.BytesTableColumn" WIDTH="75" VISIBLE="false" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="0" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="docking.widgets.pathmanager.PathManagerModel:Use:Path:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="Use" WIDTH="50" VISIBLE="true" />
                        <COLUMN NAME="Path" WIDTH="294" VISIBLE="true" />
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
            <PREFERENCE_STATE NAME="ghidra.app.plugin.core.debug.gui.memory.DebuggerRegionsPanel$RegionTableModel:Key:Path:Name:Start:End:Length:Read:">
                <XML NAME="COLUMN_DATA">
                    <Table_State>
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.memory.DebuggerRegionsPanel$RegionKeyColumn.Key" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.memory.DebuggerRegionsPanel$RegionPathColumn.Path" WIDTH="500" VISIBLE="false" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.memory.DebuggerRegionsPanel$RegionNameColumn.Name" WIDTH="213" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.memory.DebuggerRegionsPanel$RegionStartColumn.Start" WIDTH="213" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.memory.DebuggerRegionsPanel$RegionEndColumn.End" WIDTH="214" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.memory.DebuggerRegionsPanel$RegionLengthColumn.Length" WIDTH="214" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.memory.DebuggerRegionsPanel$RegionReadColumn.Read" WIDTH="69" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.memory.DebuggerRegionsPanel$RegionWriteColumn.Write" WIDTH="69" VISIBLE="true" />
                        <COLUMN NAME="ghidra.app.plugin.core.debug.gui.memory.DebuggerRegionsPanel$RegionExecuteColumn.Execute" WIDTH="69" VISIBLE="true" />
                        <TABLE_SORT_STATE>
                            <COLUMN_SORT_STATE COLUMN_MODEL_INDEX="3" SORT_DIRECTION="ascending" SORT_ORDER="1" />
                        </TABLE_SORT_STATE>
                    </Table_State>
                </XML>
            </PREFERENCE_STATE>
        </PREFERENCES>
        <EXTENSIONS />
    </TOOL>
</TOOL_CONFIG>


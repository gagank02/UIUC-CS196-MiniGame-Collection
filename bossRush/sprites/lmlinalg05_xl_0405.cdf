(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*                                                                       *)
(*                                                                       *)
(*                 Commercial publication authorized.                    *)
(*                                                                       *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    149898,       4117]
NotebookOptionsPosition[     96786,       2848]
NotebookOutlinePosition[    146549,       4011]
CellTagsIndexPosition[    145707,       3990]
WindowTitle->Section 4.5 The Dimension of a Vector Space
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {}, 
    Typeset`size$$ = {0., {0., 7.}}, Typeset`update$$ = 0, Typeset`initDone$$,
     Typeset`skipInitDone$$ = True}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> If[
        TrueQ[
         Quiet[
          CurrentValue["PluginEnabled"]]], SetOptions[
          ButtonNotebook[], Background -> GrayLevel[1]]; "", 
        If[Quiet[
           Import[
           "http://media.pearsoncmg.com/aw/aw_briggs_calculus_et_1/protect/\
12312015.txt"]] === "OK", SetOptions[
           ButtonNotebook[], Background -> GrayLevel[1]]; "", SetOptions[
           ButtonNotebook[], StyleDefinitions -> Notebook[{
              Cell[
               StyleData[StyleDefinitions -> "Default.nb"]], 
              Cell[
               StyleData["Section"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False, 
               CellFrame -> {{0, 0}, {0, 0}}], 
              Cell[
               StyleData["Subsection"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Subsubsection"], CellDingbat -> None, 
               ShowGroupOpener -> False, CellOpen -> False, ShowCellBracket -> 
               False], 
              Cell[
               StyleData["Subsubsubsection"], CellDingbat -> None, 
               ShowGroupOpener -> False, CellOpen -> False, ShowCellBracket -> 
               False], 
              Cell[
               StyleData["Subsubsubsubsection"], CellDingbat -> None, 
               ShowGroupOpener -> False, CellOpen -> False, ShowCellBracket -> 
               False], 
              Cell[
               StyleData["FirstCell"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> True, ShowCellBracket -> False], 
              Cell[
               StyleData["Text"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Item"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Subitem"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Subsubitem"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Definition"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Theorem"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Summary"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Procedure"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Important"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Note"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["QuickCheck"], CellDingbat -> None, ShowGroupOpener -> F\
alse, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["FigureCaption"], CellDingbat -> None, 
               ShowGroupOpener -> False, CellOpen -> False, ShowCellBracket -> 
               False], 
              Cell[
               StyleData["RelatedExercises"], CellDingbat -> None, 
               ShowGroupOpener -> False, CellOpen -> False, ShowCellBracket -> 
               False], 
              Cell[
               StyleData["ExerciseDirectionsCell"], CellDingbat -> None, 
               ShowGroupOpener -> False, CellOpen -> False, ShowCellBracket -> 
               False], 
              Cell[
               StyleData["TExerciseDirectionsCell"], CellDingbat -> None, 
               ShowGroupOpener -> False, CellOpen -> False, ShowCellBracket -> 
               False], 
              Cell[
               StyleData["SubExerciseDirectionsCell"], CellDingbat -> None, 
               ShowGroupOpener -> False, CellOpen -> False, ShowCellBracket -> 
               False], 
              Cell[
               StyleData["Problem"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["TProblem"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["SubProblem"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Callout"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["QuickCheckAnswer"], CellDingbat -> None, 
               ShowGroupOpener -> False, CellOpen -> False, ShowCellBracket -> 
               False], 
              Cell[
               StyleData["Output"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["Input"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["TableCell"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["CalloutIcon"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["QuickCheckAnswerIcon"], CellDingbat -> None, 
               ShowGroupOpener -> False, CellOpen -> False, ShowCellBracket -> 
               False], 
              Cell[
               StyleData["SectionTitleFont"], FontColor -> GrayLevel[1], 
               CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["QuickCheckFont"], FontColor -> GrayLevel[1], 
               CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["DefinitionFont"], FontColor -> GrayLevel[1], 
               CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["TheoremFont"], FontColor -> GrayLevel[1], CellOpen -> 
               False, ShowCellBracket -> False], 
              Cell[
               StyleData["SummaryFont"], FontColor -> GrayLevel[1], CellOpen -> 
               False, ShowCellBracket -> False], 
              Cell[
               StyleData["ProcedureFont"], FontColor -> GrayLevel[1], 
               CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["SolutionFont"], FontColor -> GrayLevel[1], CellOpen -> 
               False, ShowCellBracket -> False], 
              Cell[
               StyleData["FigureFont"], FontColor -> GrayLevel[1], CellOpen -> 
               False, ShowCellBracket -> False], 
              Cell[
               StyleData["FigureFontText"], FontColor -> GrayLevel[1], 
               CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["TableFont"], FontColor -> GrayLevel[1], CellOpen -> 
               False, ShowCellBracket -> False], 
              Cell[
               StyleData["TypesetAnnotationFont"], FontColor -> GrayLevel[1], 
               CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["ExerciseFont"], FontColor -> GrayLevel[1], CellOpen -> 
               False, ShowCellBracket -> False], 
              Cell[
               StyleData["ExerciseGroupFont"], FontColor -> GrayLevel[1], 
               CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["CalloutIconFont"], FontColor -> GrayLevel[1], 
               CellOpen -> False, ShowCellBracket -> False], 
              Cell[
               StyleData["DockedCell"], CellDingbat -> None, ShowGroupOpener -> 
               False, CellOpen -> False, ShowCellBracket -> False]}, 
             WindowMargins -> {{891, Automatic}, {Automatic, 138}}, 
             FrontEndVersion -> 
             "7.0 for Mac OS X x86 (32-bit) (February 18, 2009)", 
             StyleDefinitions -> "PrivateStylesheetFormatting.nb"], 
           WindowTitle -> 
           "Please log into your MyMathLab or MathXL course to access the \
eBook.", WindowElements -> {}]; Framed[
           Pane[
           "\nYour access to this electronic textbook file has expired \
\[LongDash] Internet access is required to validate your access.\n\nPlease \
log into your MyMathLab or MathXL course to view your electronic textbook.\n\
", {600, Automatic}, 
            BaseStyle -> {
             LineIndent -> 0, LinebreakAdjustments -> {1, 1, 0, 0, 0}, 
              LineBreakWithin -> Automatic, Hyphenation -> True, 
              TextAlignment -> Left, FontSize -> 18, Background -> 
              LightYellow, FontFamily -> "Helvetica"}], {
           Background -> LightYellow}]]], "Specifications" :> {}, 
      "Options" :> {Paneled -> False, AppearanceElements -> None}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{20., {15., 21.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "FirstCell"],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["4.5  ", "SectionTitleNumberFont"],
 StyleBox["THE DIMENSION OF A VECTOR SPACE", "SectionTitleFont"]
}], "Section",
 CellChangeTimes->{{3.629220747141988*^9, 3.6292207665024023`*^9}},
 CellTags->"4.5 THE DIMENSION OF A VECTOR SPACE"],

Cell[CellGroupData[{

Cell["Introduction", "Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.6292208437439504`*^9, 3.629220845619046*^9}},
 CellTags->"Introduction"],

Cell[TextData[{
 "Theorem 8 in Section 4.4 implies that a vector space ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " with a basis",
 " ",
 Cell[BoxData[
  FormBox["\[ScriptCapitalB]", TraditionalForm]]],
 " containing ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors is isomorphic to ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["\[DoubleStruckCapitalR]", "n"], TraditionalForm]]],
 ". This section shows that this number ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " is an intrinsic property (called the dimension) of the space ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " that does not depend on the particular choice of basis. The discussion of \
dimension will give additional insight into properties of bases. "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.6292201552900047`*^9}, {
   3.6292204362299757`*^9, 3.629220437230024*^9}, {3.62922068345118*^9, 
   3.6292207277503567`*^9}, {3.6292207805656075`*^9, 
   3.6292208170081863`*^9}, {3.6296639632836514`*^9, 3.6296639775812554`*^9}, 
   3.6296640919146233`*^9}],

Cell[TextData[{
 "\tThe first theorem generalizes a well-known result about the vector space ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["\[DoubleStruckCapitalR]", "n"], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220157586999*^9}, {
   3.629220437355031*^9, 3.629220437683174*^9}, 3.629220727906617*^9, {
   3.6292208270711946`*^9, 3.6292208518849745`*^9}}],

Cell[TextData[{
 StyleBox["THEOREM 9", "TheoremFont"],
 "\nIf a vector space ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " has a basis ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FormBox["\[ScriptCapitalB]",
     TraditionalForm], "=", 
    FormBox[
     RowBox[{"{", 
      RowBox[{
       SubscriptBox[
        FormBox[
         StyleBox["b",
          FontWeight->"Bold",
          FontSlant->"Plain"],
         TraditionalForm], "1"], ",", 
       SubscriptBox[
        FormBox[
         StyleBox["b",
          FontWeight->"Bold",
          FontSlant->"Plain"],
         TraditionalForm], "2"], ",", 
       FormBox["\[Ellipsis]",
        TraditionalForm], ",", 
       SubscriptBox[
        FormBox[
         StyleBox["b",
          FontWeight->"Bold",
          FontSlant->"Plain"],
         TraditionalForm], "n"]}], "}"}],
     TraditionalForm]}], TraditionalForm]]],
 ", then any set in ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " containing more than ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors must be linearly dependent."
}], "Theorem",
 CellChangeTimes->{{3.6292208611510744`*^9, 3.629220864745041*^9}, {
   3.629220950052765*^9, 3.6292209538186207`*^9}, {3.634223108873966*^9, 
   3.634223110267571*^9}, 3.636560496218265*^9},
 CellTags->"THEOREM 9 Linearly Dependent Vectors"],

Cell[TextData[{
 StyleBox["PROOF", "ProofFont"],
 "  Let ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "1"], ",", 
     FormBox["\[Ellipsis]",
      TraditionalForm], ",", 
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "p"]}], "}"}], TraditionalForm]]],
 " be a set in ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " with more than ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors. The coordinate vectors ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox[
     RowBox[{"[", 
      SubscriptBox[
       FormBox[
        StyleBox["u",
         FontWeight->"Bold",
         FontSlant->"Plain"],
        TraditionalForm], "1"], "]"}], 
     FormBox["\[ScriptCapitalB]",
      TraditionalForm]], ",", 
    FormBox["\[Ellipsis]",
     TraditionalForm], ",", 
    SubscriptBox[
     RowBox[{"[", 
      SubscriptBox[
       FormBox[
        StyleBox["u",
         FontWeight->"Bold",
         FontSlant->"Plain"],
        TraditionalForm], "p"], "]"}], 
     FormBox["\[ScriptCapitalB]",
      TraditionalForm]]}], TraditionalForm]]],
 " form a linearly dependent set in",
 " ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["\[DoubleStruckCapitalR]", "n"], TraditionalForm]]],
 ", because there are more vectors (",
 Cell[BoxData[
  FormBox["p", TraditionalForm]]],
 ") than entries (",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 ") in each vector. So there exist scalars ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["c", "1"], ",", 
    FormBox["\[Ellipsis]",
     TraditionalForm], ",", 
    SubscriptBox["c", "p"]}], TraditionalForm]]],
 " , not all zero, such that"
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.62922016261851*^9}, {
   3.6292204383707075`*^9, 3.6292204388394823`*^9}, 3.629220684091839*^9, 
   3.6292207281878815`*^9, {3.629220965022297*^9, 3.6292210136967297`*^9}, {
   3.629221104328015*^9, 3.629221244322151*^9}, {3.6292213075527816`*^9, 
   3.6292213190846577`*^9}, 3.6296639791125836`*^9, {3.6342231195830507`*^9, 
   3.6342231205948353`*^9}, {3.634892666158359*^9, 3.634892671827526*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        FormBox[
         RowBox[{
          RowBox[{
           SubscriptBox[
            RowBox[{
             SubscriptBox["c", "1"], "[", 
             SubscriptBox[
              FormBox[
               StyleBox["u",
                FontWeight->"Bold",
                FontSlant->"Plain"],
               TraditionalForm], "1"], "]"}], 
            FormBox["\[ScriptCapitalB]",
             TraditionalForm]], "+", 
           SubscriptBox[
            RowBox[{
             SubscriptBox["c", "2"], "[", 
             SubscriptBox[
              FormBox[
               StyleBox["u",
                FontWeight->"Bold",
                FontSlant->"Plain"],
               TraditionalForm], "2"], "]"}], 
            FormBox["\[ScriptCapitalB]",
             TraditionalForm]], "+", 
           FormBox["\[CenterEllipsis]",
            TraditionalForm], "+", 
           SubscriptBox[
            RowBox[{
             SubscriptBox["c", "p"], "[", 
             SubscriptBox[
              FormBox[
               StyleBox["u",
                FontWeight->"Bold",
                FontSlant->"Plain"],
               TraditionalForm], "p"], "]"}], 
            FormBox["\[ScriptCapitalB]",
             TraditionalForm]]}], "=", 
          TemplateBox[{GraphicsBox[{
              LineBox[{{0, 0}, {0, 40}}], 
              LineBox[{{0, 40}, {2, 40}}], 
              LineBox[{{0, 0}, {2, 0}}]}, ImageSize -> {10, 75}],TagBox[
             
             GridBox[{{"0"}, {"0"}, {"\[VerticalEllipsis]"}, {"0"}}, 
              GridBoxAlignment -> {"Columns" -> {{"Center"}}}], "Grid"],
            GraphicsBox[{
              LineBox[{{2, 0}, {2, 40}}], 
              LineBox[{{0, 40}, {2, 40}}], 
              LineBox[{{0, 0}, {2, 0}}]}, ImageSize -> {10, 75}]},
           "RowDefault"]}],
         TraditionalForm], 
        StyleBox[
         RowBox[{"The", " ", "zero", " ", "vector", " ", "in", " ", 
          FormBox[
           SuperscriptBox["\[DoubleStruckCapitalR]", "n"],
           TraditionalForm]}], "FontColorLB"]}
      },
      GridBoxAlignment->{"Columns" -> {{"Center"}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.629221332350938*^9, 3.6292214615187664`*^9}, {
  3.634223129931781*^9, 3.634223156693344*^9}}],

Cell["Since the coordinate mapping is a linear transformation,", "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.62922016993139*^9}, 
   3.6292204391676254`*^9, {3.629221497674642*^9, 3.6292214985184555`*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {GridBox[{
          {
           FormBox[
            RowBox[{
             SubscriptBox[
              RowBox[{"[", 
               RowBox[{
                RowBox[{
                 SubscriptBox["c", "1"], 
                 SubscriptBox[
                  FormBox[
                   StyleBox["u",
                    FontWeight->"Bold",
                    FontSlant->"Plain"],
                   TraditionalForm], "1"]}], "+", 
                RowBox[{
                 SubscriptBox["c", "2"], 
                 SubscriptBox[
                  FormBox[
                   StyleBox["u",
                    FontWeight->"Bold",
                    FontSlant->"Plain"],
                   TraditionalForm], "2"]}], "+", 
                FormBox["\[CenterEllipsis]",
                 TraditionalForm], "+", 
                RowBox[{
                 SubscriptBox["c", "p"], 
                 SubscriptBox[
                  FormBox[
                   StyleBox["u",
                    FontWeight->"Bold",
                    FontSlant->"Plain"],
                   TraditionalForm], "p"]}]}], "]"}], 
              FormBox["\[ScriptCapitalB]",
               TraditionalForm]], "=", 
             TemplateBox[{GraphicsBox[{
                 LineBox[{{0, 0}, {0, 40}}], 
                 LineBox[{{0, 40}, {2, 40}}], 
                 LineBox[{{0, 0}, {2, 0}}]}, ImageSize -> {10, 75}],TagBox[
                
                GridBox[{{"0"}, {"0"}, {"\[VerticalEllipsis]"}, {"0"}}, 
                 GridBoxAlignment -> {"Columns" -> {{"Center"}}}], "Grid"],
               GraphicsBox[{
                 LineBox[{{2, 0}, {2, 40}}], 
                 LineBox[{{0, 40}, {2, 40}}], 
                 LineBox[{{0, 0}, {2, 0}}]}, ImageSize -> {10, 75}]},
              "RowDefault"]}],
            TraditionalForm]}
         },
         GridBoxAlignment->{"Columns" -> {{"Center"}}}]}
      },
      GridBoxAlignment->{"Columns" -> {{"Center"}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.6292215105503*^9, 3.6292215599747486`*^9}, {
  3.63422306531349*^9, 3.634223066234704*^9}, {3.634223162576933*^9, 
  3.634223173041651*^9}}],

Cell[TextData[{
 "The zero vector on the right displays the ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " weights needed to build the vector ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["c", "1"], 
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "1"]}], "+", 
    RowBox[{
     SubscriptBox["c", "2"], 
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "2"]}], "+", 
    FormBox["\[CenterEllipsis]",
     TraditionalForm], "+", 
    RowBox[{
     SubscriptBox["c", "p"], 
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "p"]}]}], TraditionalForm]]],
 " from the basis vectors in ",
 Cell[BoxData[
  FormBox["\[ScriptCapitalB]", TraditionalForm]]],
 ". That is, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{
      SubscriptBox["c", "1"], 
      SubscriptBox[
       FormBox[
        StyleBox["u",
         FontWeight->"Bold",
         FontSlant->"Plain"],
        TraditionalForm], "1"]}], "+", 
     RowBox[{
      SubscriptBox["c", "2"], 
      SubscriptBox[
       FormBox[
        StyleBox["u",
         FontWeight->"Bold",
         FontSlant->"Plain"],
        TraditionalForm], "2"]}], "+", 
     FormBox["\[CenterEllipsis]",
      TraditionalForm], "+", 
     RowBox[{
      SubscriptBox["c", "p"], 
      SubscriptBox[
       FormBox[
        StyleBox["u",
         FontWeight->"Bold",
         FontSlant->"Plain"],
        TraditionalForm], "p"]}]}], "=", 
    FormBox[
     RowBox[{
      RowBox[{
       RowBox[{"0", 
        SubscriptBox[
         FormBox[
          StyleBox["b",
           FontWeight->"Bold",
           FontSlant->"Plain"],
          TraditionalForm], "1"]}], "+", 
       RowBox[{"0", 
        SubscriptBox[
         FormBox[
          StyleBox["b",
           FontWeight->"Bold",
           FontSlant->"Plain"],
          TraditionalForm], "2"]}], "+", 
       FormBox["\[CenterEllipsis]",
        TraditionalForm], "+", 
       RowBox[{"0", 
        SubscriptBox[
         FormBox[
          StyleBox["b",
           FontWeight->"Bold",
           FontSlant->"Plain"],
          TraditionalForm], "n"]}]}], "=", 
      FormBox[
       StyleBox["0",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm]}],
     TraditionalForm]}], TraditionalForm]]],
 ". Since the ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["c", "i"], TraditionalForm]]],
 " are not all zero, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "1"], ",", 
     FormBox["\[Ellipsis]",
      TraditionalForm], ",", 
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "p"]}], "}"}], TraditionalForm]]],
 " is linearly dependent."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220176244192*^9}, {
   3.6292204395113897`*^9, 3.6292204405583205`*^9}, 3.629220706593008*^9, {
   3.6292215722253757`*^9, 3.629221572491026*^9}, {3.629221658183344*^9, 
   3.6292218462236195`*^9}, {3.629663985878559*^9, 3.629663987503643*^9}, {
   3.634223177202919*^9, 3.63422317794497*^9}}],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[BoxData[
  FrameBox[
   PaneBox[
    StyleBox[
     GraphicsBox[
      {RGBColor[0., 0.457031, 0.304688], EdgeForm[RGBColor[
       0., 0.457031, 0.304688]], 
       PolygonBox[{{0.2, 0}, {0, -0.3}, {0.9, 0}, {0, 0.3}, {0.2, 0}}]},
      ImageSize->15,
      PlotRange->{-0.5, 0.3}], "Note",
     Editable->False,
     Selectable->False],
    Alignment->{Center, Top},
    ImageSize->{18, 13}],
   Background->GrayLevel[0.97],
   FrameMargins->{{5, 5}, {-1, -0.1}},
   FrameStyle->GrayLevel[0.93],
   RoundingRadius->2]]],
 "  ",
 StyleBox["Note", "CalloutIconFont"]
}], "CalloutIcon",
 WholeCellGroupOpener->True],

Cell[TextData[{
 "Theorem 9 also applies to infinite sets in ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". An infinite set is said to be linearly dependent if some finite subset is \
linearly dependent; otherwise, the set is linearly independent. If ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " is an infinite set in ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ", take any subset ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "1"], ",", 
     FormBox["\[Ellipsis]",
      TraditionalForm], ",", 
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "p"]}], "}"}], TraditionalForm]]],
 " of ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 ", with ",
 Cell[BoxData[
  FormBox[
   RowBox[{"p", ">", "n"}], TraditionalForm]]],
 ".",
 " ",
 "The proof above shows that this subset is linearly dependent, and hence so \
is ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 "."
}], "Callout",
 CellChangeTimes->{{3.629221866162123*^9, 3.6292219631046906`*^9}, 
   3.6296639918945055`*^9}]
}, Closed]],

Cell[TextData[StyleBox["\[FilledSquare]", "ProofEndFont"]], "Text",
 TextAlignment->Right],

Cell[TextData[{
 "\tTheorem 9 implies that if a vector space ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " has a basis ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FormBox["\[ScriptCapitalB]",
     TraditionalForm], "=", 
    FormBox[
     RowBox[{"{", 
      RowBox[{
       SubscriptBox[
        FormBox[
         StyleBox["b",
          FontWeight->"Bold",
          FontSlant->"Plain"],
         TraditionalForm], "1"], ",", 
       SubscriptBox[
        FormBox[
         StyleBox["b",
          FontWeight->"Bold",
          FontSlant->"Plain"],
         TraditionalForm], "2"], ",", 
       FormBox["\[Ellipsis]",
        TraditionalForm], ",", 
       SubscriptBox[
        FormBox[
         StyleBox["b",
          FontWeight->"Bold",
          FontSlant->"Plain"],
         TraditionalForm], "n"]}], "}"}],
     TraditionalForm]}], TraditionalForm]]],
 ", then each linearly independent set in ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " has no more than ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors. "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220179025592*^9}, {
   3.629220440683327*^9, 3.629220441292735*^9}, {3.6292206842324715`*^9, 
   3.629220684388729*^9}, {3.6292220722888827`*^9, 3.629222119681937*^9}, 
   3.629222234062883*^9, {3.63422320361976*^9, 3.634223204429694*^9}}],

Cell[TextData[{
 StyleBox["THEOREM 10", "TheoremFont"],
 "\nIf a vector space ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " has a basis of ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors, then every basis of ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " must consist of exactly ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors."
}], "Theorem",
 CellChangeTimes->{{3.629222242875865*^9, 3.6292222463327503`*^9}, {
   3.629222278459413*^9, 3.6292222833190737`*^9}, 3.6365604982548723`*^9},
 CellTags->"THEOREM 10 Number of Vectors in a Basis"],

Cell[TextData[{
 StyleBox["PROOF", "ProofFont"],
 "  Let ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptCapitalB]", "1"], TraditionalForm]]],
 " be a basis of ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptCapitalB]", "2"], TraditionalForm]]],
 " be any other basis (of ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 "). Since ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptCapitalB]", "1"], TraditionalForm]]],
 " is a basis and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    FormBox["\[ScriptCapitalB]",
     TraditionalForm], "2"], TraditionalForm]]],
 " is linearly independent, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptCapitalB]", "2"], TraditionalForm]]],
 " has no more than ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors, by Theorem 9. Also, since ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptCapitalB]", "2"], TraditionalForm]]],
 " is a basis and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptCapitalB]", "1"], TraditionalForm]]],
 " is linearly independent, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptCapitalB]", "2"], TraditionalForm]]],
 " has at least ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors. Thus ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[ScriptCapitalB]", "2"], TraditionalForm]]],
 " consists of exactly ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220183416459*^9}, {
   3.629220441402116*^9, 3.62922044280844*^9}, {3.6292206845606127`*^9, 
   3.6292206847012453`*^9}, 3.6292209774448137`*^9, {3.629222220437167*^9, 
   3.6292224277366962`*^9}, 3.629663993128937*^9, {3.6342230358590927`*^9, 
   3.634223036806445*^9}, 3.634892753910524*^9}],

Cell[TextData[StyleBox["\[FilledSquare]", "ProofEndFont"]], "Text",
 TextAlignment->Right],

Cell[TextData[{
 "\tIf a nonzero vector space ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is spanned by a finite set ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 ", then a subset of ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " is a basis for ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ", by the Spanning Set Theorem.",
 " ",
 "In this case, Theorem 10 ensures that the following definition makes \
sense."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.6292201858228097`*^9}, {
   3.629220442917818*^9, 3.6292204435598726`*^9}, 3.6292206848575044`*^9, {
   3.6292224363934097`*^9, 3.6292224933963795`*^9}, 3.629663994144623*^9}],

Cell[TextData[{
 StyleBox["DEFINITION", "DefinitionFont"],
 "\nIf ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is spanned by a finite set, then ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is said to be ",
 StyleBox["finite-dimensional",
  FontWeight->"Bold"],
 ", and the ",
 StyleBox["dimension",
  FontWeight->"Bold"],
 " of ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ", written as ",
 Cell[BoxData[
  FormBox[
   RowBox[{"dim", " ", "V"}], TraditionalForm]]],
 ", is the number of vectors in a basis for ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". The dimension of the zero vector space ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    FormBox[
     StyleBox["0",
      FontWeight->"Bold",
      FontSlant->"Plain"],
     TraditionalForm], "}"}], TraditionalForm]]],
 " is defined to be zero. If ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is not spanned by a finite set, then ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is said to be ",
 StyleBox["infinite-dimensional",
  FontWeight->"Bold"],
 ". "
}], "Definition",
 CellChangeTimes->{
  3.6292225005530014`*^9, {3.6292226415859594`*^9, 3.6292226463987074`*^9}, {
   3.634892779426322*^9, 3.634892786623651*^9}, 3.636560500295189*^9},
 CellTags->"DEFINITION Dimension"],

Cell[CellGroupData[{

Cell[TextData[StyleBox["EXAMPLE 1", "ExampleFont"]], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{3.629222664180902*^9},
 CellTags->"EXAMPLE 1"],

Cell[TextData[{
 "The standard basis for ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["\[DoubleStruckCapitalR]", "n"], TraditionalForm]]],
 " contains ",
 Cell[BoxData[
  FormBox["n", TraditionalForm]]],
 " vectors, so ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", 
     FormBox[
      SuperscriptBox["\[DoubleStruckCapitalR]", "n"],
      TraditionalForm]}], "=", "n"}], TraditionalForm]]],
 ". The standard polynomial basis ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{"1", ",", "t", ",", 
     SuperscriptBox["t", "2"]}], "}"}], TraditionalForm]]],
 " shows that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", 
     FormBox[
      SubscriptBox["\[DoubleStruckCapitalP]", "2"],
      TraditionalForm]}], "=", "3"}], TraditionalForm]]],
 ". In general, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", 
     FormBox[
      SubscriptBox["\[DoubleStruckCapitalP]", "n"],
      TraditionalForm]}], "=", 
    RowBox[{"n", "+", "1"}]}], TraditionalForm]]],
 ".",
 " ",
 "The space \[DoubleStruckCapitalP] of all polynomials is \
infinite-dimensional (Exercise 27). "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.6292201915418873`*^9}, {
   3.6292204446745872`*^9, 3.6292204454715023`*^9}, 3.6292207285472717`*^9, 
   3.62922222146847*^9, {3.6292226684553146`*^9, 3.6292228266962996`*^9}, {
   3.6296639959103346`*^9, 3.629663997097893*^9}, {3.63422322769459*^9, 
   3.634223232779661*^9}}],

Cell[TextData[StyleBox["\[FilledSquare]", "SolutionEndFont"]], "Text",
 TextAlignment->Right]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["EXAMPLE 2", "ExampleFont"]], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{3.6292228377593584`*^9},
 CellTags->"EXAMPLE 2"],

Cell[TextData[{
 "Let ",
 Cell[BoxData[
  FormBox[
   RowBox[{"H", "=", 
    RowBox[{"Span", 
     RowBox[{"{", 
      RowBox[{
       SubscriptBox[
        FormBox[
         StyleBox["v",
          FontWeight->"Bold",
          FontSlant->"Plain"],
         TraditionalForm], "1"], ",", 
       SubscriptBox[
        FormBox[
         StyleBox["v",
          FontWeight->"Bold",
          FontSlant->"Plain"],
         TraditionalForm], "2"]}], "}"}]}]}], TraditionalForm]]],
 ", where ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox[
     StyleBox["v",
      FontWeight->"Bold",
      FontSlant->"Plain"], "1"], "=", 
    TemplateBox[{GraphicsBox[{
        LineBox[{{0, 0}, {0, 25}}], 
        LineBox[{{0, 25}, {1, 25}}], 
        LineBox[{{0, 0}, {1, 0}}]}, ImageSize -> {5, 50}],TagBox[
       GridBox[{{"3"}, {"6"}, {"2"}}, AutoDelete -> False, 
        GridBoxAlignment -> {"Columns" -> {{Right}}}, 
        GridBoxItemSize -> {
         "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"],
      GraphicsBox[{
        LineBox[{{1, 0}, {1, 25}}], 
        LineBox[{{0, 25}, {1, 25}}], 
        LineBox[{{0, 0}, {1, 0}}]}, ImageSize -> {5, 50}]},
     "RowDefault"]}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox[
     FormBox[
      StyleBox["v",
       FontWeight->"Bold",
       FontSlant->"Plain"],
      TraditionalForm], "2"], "=", 
    TemplateBox[{GraphicsBox[{
        LineBox[{{0, 0}, {0, 25}}], 
        LineBox[{{0, 25}, {1, 25}}], 
        LineBox[{{0, 0}, {1, 0}}]}, ImageSize -> {5, 50}],TagBox[
       GridBox[{{
          RowBox[{"-", "1"}]}, {"0"}, {"1"}}, AutoDelete -> False, 
        GridBoxAlignment -> {"Columns" -> {{Right}}}, 
        GridBoxItemSize -> {
         "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"],
      GraphicsBox[{
        LineBox[{{1, 0}, {1, 25}}], 
        LineBox[{{0, 25}, {1, 25}}], 
        LineBox[{{0, 0}, {1, 0}}]}, ImageSize -> {5, 50}]},
     "RowDefault"]}], TraditionalForm]]],
 ". Then ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 " is the plane studied in Example 7 in Section 4.4. A basis for ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 " is ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{
     SubscriptBox[
      FormBox[
       StyleBox["v",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "1"], ",", 
     SubscriptBox[
      FormBox[
       StyleBox["v",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "2"]}], "}"}], TraditionalForm]]],
 ", since ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    FormBox[
     StyleBox["v",
      FontWeight->"Bold",
      FontSlant->"Plain"],
     TraditionalForm], "1"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    FormBox[
     StyleBox["v",
      FontWeight->"Bold",
      FontSlant->"Plain"],
     TraditionalForm], "2"], TraditionalForm]]],
 " are not multiples and hence are linearly independent. Thus ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", "H"}], "=", "2"}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.6292201953858366`*^9}, {
   3.629220445580882*^9, 3.6292204468330374`*^9}, {3.6292228436503057`*^9, 
   3.6292231412873893`*^9}, {3.634223244952347*^9, 3.6342232576398563`*^9}}],

Cell[BoxData[
 TemplateBox[{TagBox[
    GridBox[{{
       TagBox[
        StyleBox[
         DynamicModuleBox[{$CellContext`a$$ = 1, $CellContext`b$$ = 4, 
           Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
           Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, 
           Typeset`animvar$$ = 1, Typeset`name$$ = "\"untitled\"", 
           Typeset`specs$$ = {{{
               Hold[$CellContext`a$$], 1, 
               Style[
               "\!\(TraditionalForm\`\*SubscriptBox[\(c\), \(1\)]\)", {
                FontFamily -> "Times", 14}, 
                RGBColor[0, 0.7, 0.7]]}, -2., 2., 
              Rational[1, 10]}, {{
               Hold[$CellContext`b$$], 4, 
               Style[
               "\!\(TraditionalForm\`\*SubscriptBox[\(c\), \(2\)]\)", {
                FontFamily -> "Times", 14}, 
                RGBColor[0, 0.7, 0.7]]}, -4., 4., 
              Rational[1, 10]}}, Typeset`size$$ = {275., {134., 141.}}, 
           Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
           False, $CellContext`a$21413$$ = 0, $CellContext`b$21414$$ = 0}, 
          DynamicBox[
           Manipulate`ManipulateBoxes[
           1, StandardForm, 
            "Variables" :> {$CellContext`a$$ = 1, $CellContext`b$$ = 4}, 
            "ControllerVariables" :> {
              Hold[$CellContext`a$$, $CellContext`a$21413$$, 0], 
              Hold[$CellContext`b$$, $CellContext`b$21414$$, 0]}, 
            "OtherVariables" :> {
             Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
              Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
              Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
              Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> 
            Module[{$CellContext`x$, $CellContext`y$}, $CellContext`x$ = {{
                3}, {6}, {2}}; $CellContext`y$ = {{-1}, {0}, {1}}; 
              Graphics3D[{$CellContext`jcyan, {
                  Opacity[0.4], 
                  
                  Polygon[{{0, 0, 0}, {
                    3 $CellContext`a$$, 6 $CellContext`a$$, 
                    2 $CellContext`a$$}, {
                    3 $CellContext`a$$ - $CellContext`b$$, 6 $CellContext`a$$,
                     2 $CellContext`a$$ + $CellContext`b$$}, \
{-$CellContext`b$$, 0, $CellContext`b$$}}], 
                  Opacity[0.1], 
                  
                  Polygon[{{18, 36, 12}, {-12, 0, 12}, {-18, -36, -12}, {12, 
                   0, -12}}]}, $CellContext`jblue, 
                 
                 Arrow[{{0, 0, 0}, {
                   3 $CellContext`a$$ - $CellContext`b$$, 6 $CellContext`a$$, 
                    2 $CellContext`a$$ + $CellContext`b$$}}], 
                 Inset[
                 "\!\(\*\nStyleBox[FormBox[\n  StyleBox[\"y\",\n\
FontWeight->\"Bold\",\nFontSlant->\"Plain\"],\n  TraditionalForm],\n\
FontWeight->Bold,\nFontSlant->Plain]\)", {
                  3 $CellContext`a$$ - $CellContext`b$$ + 
                   Sign[$CellContext`a$$] Sign[$CellContext`b$$], 
                   6 $CellContext`a$$ + 
                   Sign[$CellContext`a$$] Sign[$CellContext`b$$], 
                   2 $CellContext`a$$ + $CellContext`b$$ + 
                   1.5 Sign[$CellContext`b$$]}], $CellContext`jcyandk, 
                 
                 Arrow[{{0, 0, 0}, {
                   3 $CellContext`a$$, 6 $CellContext`a$$, 
                    2 $CellContext`a$$}}], 
                 Inset[
                 "\!\(\*FormBox[\n RowBox[{SubscriptBox[\"c\", \"1\"], \
SubscriptBox[FormBox[\n    StyleBox[\"v\",\nFontWeight->\"Bold\",\n\
FontSlant->\"Plain\"],\n    TraditionalForm], \"1\"]}],\n \
TraditionalForm]\)", {
                  3 $CellContext`a$$ + Sign[$CellContext`b$$], 
                   6 $CellContext`a$$ + Sign[$CellContext`b$$], 
                   2 $CellContext`a$$ - Sign[$CellContext`b$$]}], 
                 Inset[
                 "\!\(\*\nStyleBox[\"H\",\nFontSlant->\"Italic\"]\)", {-6, -6,
                   9}], 
                 Arrow[{{0, 0, 0}, {-$CellContext`b$$, 0, $CellContext`b$$}}], 
                 Inset[
                 "\!\(\*FormBox[FormBox[\n  RowBox[{SubscriptBox[\"c\", \
\"2\"], SubscriptBox[FormBox[\n     StyleBox[\"v\",\nFontWeight->\"Bold\",\n\
FontSlant->\"Plain\"],\n     TraditionalForm], \"2\"]}],\n  TraditionalForm],\
\n TraditionalForm]\)", {-$CellContext`b$$ + Sign[$CellContext`a$$], 
                   Sign[$CellContext`a$$], $CellContext`b$$ + 
                   2 Sign[$CellContext`b$$]}]}, Lighting -> "Neutral", Ticks -> 
                False, Axes -> True, AxesOrigin -> {0, 0, 0}, 
                ImageSize -> {275, 275}, BaseStyle -> $CellContext`jbasestyle,
                 ViewPoint -> {4, 2, 2}, 
                PlotRange -> {{-12, 12}, {-12, 12}, {-12, 12}}, AspectRatio -> 
                1]], "Specifications" :> {{{$CellContext`a$$, 1, 
                Style[
                "\!\(TraditionalForm\`\*SubscriptBox[\(c\), \(1\)]\)", {
                 FontFamily -> "Times", 14}, 
                 RGBColor[0, 0.7, 0.7]]}, -2., 2., 
               Rational[1, 10], ControlType -> Slider, Appearance -> 
               "Labeled"}, {{$CellContext`b$$, 4, 
                Style[
                "\!\(TraditionalForm\`\*SubscriptBox[\(c\), \(2\)]\)", {
                 FontFamily -> "Times", 14}, 
                 RGBColor[0, 0.7, 0.7]]}, -4., 4., 
               Rational[1, 10], ControlType -> Slider, Appearance -> 
               "Labeled"}}, 
            "Options" :> {
             AppearanceElements -> "ResetButton", 
              BaseStyle -> {FontFamily -> "Times", 14}, FrameLabel -> {
                Style[
                "A plane \!\(TraditionalForm\`H\) in \
\!\(TraditionalForm\`\*SuperscriptBox[\(\[DoubleStruckCapitalR]\), \(3\)]\) \
is two dimensional.", {FontFamily -> "Times", 16}]}, ControlPlacement -> 
              Bottom}, "DefaultOptions" :> {}], 
           ImageSizeCache -> {320., {206., 213.}}, SingleEvaluation -> True], 
          Deinitialization :> None, DynamicModuleValues :> {}, 
          Initialization :> ({$CellContext`jcyan = 
             RGBColor[0, 1, 1], $CellContext`jblue = 
             RGBColor[0, 0, 1], $CellContext`jcyandk = 
             RGBColor[0, 0.7, 0.7], $CellContext`jbasestyle = {
              FontFamily -> "Times", 14}}; Typeset`initDone$$ = True), 
          SynchronousInitialization -> True, 
          UnsavedVariables :> {Typeset`initDone$$}, 
          UntrackedVariables :> {Typeset`size$$}], "Manipulate", Deployed -> 
         True, StripOnInput -> False, FontFamily -> "Times", FontSize -> 14], 
        
        Manipulate`InterpretManipulate[1]]}}, AutoDelete -> False, 
     GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Bottom}}}, 
     GridBoxItemSize -> {
      "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"],StyleBox[
   "\"FIGURE A \[FilledDiamond]\"", "FigureFont", StripOnInput -> False]},
  "Labeled",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"]}, {
      ItemBox[#2, Alignment -> {Left, Inherited}, DefaultBaseStyle -> 
       "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, 
    GridBoxItemSize -> {"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
    BaselinePosition -> {1, 1}]& ),
  InterpretationFunction->(RowBox[{"Labeled", "[", 
     RowBox[{#, ",", #2, ",", 
       RowBox[{"{", 
         RowBox[{"{", 
           RowBox[{"Bottom", ",", "Left"}], "}"}], "}"}]}], 
     "]"}]& )]], "Output",
 CellChangeTimes->{3.6366383056178837`*^9},
 CellTags->"FIGURE A \[FilledDiamond]:  A Two Dimensional Subspace"],

Cell[TextData[StyleBox["\[FilledSquare]", "SolutionEndFont"]], "Text",
 TextAlignment->Right]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["EXAMPLE 3", "ExampleFont"]], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{3.629223157819519*^9},
 CellTags->"EXAMPLE 3"],

Cell[TextData[{
 "Find the dimension of the subspace ",
 Cell[BoxData[
  FormBox[
   RowBox[{"H", "=", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       TemplateBox[{GraphicsBox[{
           LineBox[{{0, 0}, {0, 40}}], 
           LineBox[{{0, 40}, {2, 40}}], 
           LineBox[{{0, 0}, {2, 0}}]}, ImageSize -> {10, 75}],TagBox[
          GridBox[{{
             RowBox[{"a", "-", 
               RowBox[{"3", "b"}], "+", 
               RowBox[{"6", "c"}]}]}, {
             RowBox[{
               RowBox[{"5", "a"}], "+", 
               RowBox[{"4", "d"}]}]}, {
             RowBox[{"b", "-", 
               RowBox[{"2", "c"}], "-", "d"}]}, {
             RowBox[{"5", "d"}]}}, AutoDelete -> False, 
           GridBoxAlignment -> {"Columns" -> {{Center}}}, 
           GridBoxItemSize -> {
            "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"],
         GraphicsBox[{
           LineBox[{{2, 0}, {2, 40}}], 
           LineBox[{{0, 40}, {2, 40}}], 
           LineBox[{{0, 0}, {2, 0}}]}, ImageSize -> {10, 75}]},
        "RowDefault"], ":", "a"}], ",", "b", ",", "c", ",", 
      RowBox[{"d", " ", "in", " ", "\[DoubleStruckCapitalR]"}]}], "}"}]}], 
   TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.62922019835474*^9}, {
   3.629220446942416*^9, 3.6292204475361977`*^9}, {3.6292235813250885`*^9, 
   3.629223685146304*^9}, 3.6292237293360944`*^9, {3.629664002488121*^9, 
   3.6296640048476458`*^9}, {3.634223273099531*^9, 3.634223278409276*^9}, {
   3.634892853856567*^9, 3.63489285498173*^9}}],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SOLUTION", "SolutionFont"]], "Subsubsubsubsection",
 WholeCellGroupOpener->True],

Cell[TextData[{
 "It is easy to see that ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 " is the set of all linear combinations of the vectors"
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.6292202093897967`*^9}, {
   3.629220447645579*^9, 3.629220447879966*^9}, 3.6292230130718036`*^9, {
   3.629223745602537*^9, 3.629223754712413*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{
      SubscriptBox[
       FormBox[
        StyleBox["v",
         FontWeight->"Bold",
         FontSlant->"Plain"],
        TraditionalForm], "1"], "=", GridBox[{
        {
         RowBox[{
          TagBox[GridBox[{
             {
              
              GraphicsBox[{LineBox[{{0, 0}, {0, 40}}], 
                LineBox[{{0, 40}, {2, 40}}], LineBox[{{0, 0}, {2, 0}}]},
               ImageSize->{10, 75}], 
              TagBox[GridBox[{
                 {"1"},
                 {"5"},
                 {"0"},
                 {"0"}
                },
                AutoDelete->False,
                GridBoxAlignment->{"Columns" -> {{Right}}},
                
                GridBoxItemSize->{
                 "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
               "Grid"], 
              
              GraphicsBox[{LineBox[{{2, 0}, {2, 40}}], 
                LineBox[{{0, 40}, {2, 40}}], LineBox[{{0, 0}, {2, 0}}]},
               ImageSize->{10, 75}]}
            },
            AutoDelete->False,
            
            GridBoxItemSize->{
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
            GridBoxSpacings->{"Columns" -> {{0}}}],
           "Grid"], ",", "    ", 
          RowBox[{
           SubscriptBox[
            FormBox[
             StyleBox["v",
              FontWeight->"Bold",
              FontSlant->"Plain"],
             TraditionalForm], "2"], "=", 
           RowBox[{
            TagBox[GridBox[{
               {
                
                GraphicsBox[{LineBox[{{0, 0}, {0, 40}}], 
                  LineBox[{{0, 40}, {2, 40}}], LineBox[{{0, 0}, {2, 0}}]},
                 ImageSize->{10, 75}], 
                TagBox[GridBox[{
                   {
                    RowBox[{"-", "3"}]},
                   {"0"},
                   {"1"},
                   {"0"}
                  },
                  AutoDelete->False,
                  GridBoxAlignment->{"Columns" -> {{Right}}},
                  GridBoxItemSize->{
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
                 "Grid"], 
                RowBox[{
                 
                 GraphicsBox[{LineBox[{{2, 0}, {2, 40}}], 
                   LineBox[{{0, 40}, {2, 40}}], LineBox[{{0, 0}, {2, 0}}]},
                  ImageSize->{10, 75}], ",", "    ", 
                 RowBox[{
                  SubscriptBox[
                   FormBox[
                    StyleBox["v",
                    FontWeight->"Bold",
                    FontSlant->"Plain"],
                    TraditionalForm], "3"], "="}]}]}
              },
              AutoDelete->False,
              
              GridBoxItemSize->{
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
              GridBoxSpacings->{"Columns" -> {{0}}}],
             "Grid"], 
            TagBox[GridBox[{
               {
                
                GraphicsBox[{LineBox[{{0, 0}, {0, 40}}], 
                  LineBox[{{0, 40}, {2, 40}}], LineBox[{{0, 0}, {2, 0}}]},
                 ImageSize->{10, 75}], 
                TagBox[GridBox[{
                   {"6"},
                   {"0"},
                   {
                    RowBox[{"-", "2"}]},
                   {"0"}
                  },
                  AutoDelete->False,
                  GridBoxAlignment->{"Columns" -> {{Right}}},
                  
                  GridBoxItemSize->{
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
                 "Grid"], 
                
                GraphicsBox[{LineBox[{{2, 0}, {2, 40}}], 
                  LineBox[{{0, 40}, {2, 40}}], LineBox[{{0, 0}, {2, 0}}]},
                 ImageSize->{10, 75}]}
              },
              AutoDelete->False,
              
              GridBoxItemSize->{
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
              GridBoxSpacings->{"Columns" -> {{0}}}],
             "Grid"]}]}], ",", "    ", 
          RowBox[{
           SubscriptBox[
            FormBox[
             StyleBox["v",
              FontWeight->"Bold",
              FontSlant->"Plain"],
             TraditionalForm], "4"], "=", 
           TagBox[GridBox[{
              {
               
               GraphicsBox[{LineBox[{{0, 0}, {0, 40}}], 
                 LineBox[{{0, 40}, {2, 40}}], LineBox[{{0, 0}, {2, 0}}]},
                ImageSize->{10, 75}], 
               TagBox[GridBox[{
                  {"0"},
                  {"4"},
                  {
                   RowBox[{"-", "1"}]},
                  {"5"}
                 },
                 AutoDelete->False,
                 GridBoxAlignment->{"Columns" -> {{Right}}},
                 
                 GridBoxItemSize->{
                  "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
                "Grid"], 
               
               GraphicsBox[{LineBox[{{2, 0}, {2, 40}}], 
                 LineBox[{{0, 40}, {2, 40}}], LineBox[{{0, 0}, {2, 0}}]},
                ImageSize->{10, 75}]}
             },
             AutoDelete->False,
             
             GridBoxItemSize->{
              "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
             GridBoxSpacings->{"Columns" -> {{0}}}],
            "Grid"]}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"Center"}}}]}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.629224213716421*^9, 3.629224305189528*^9}, {
  3.634223080277753*^9, 3.634223080277774*^9}}],

Cell[TextData[{
 "Clearly, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox[
     StyleBox["v",
      FontWeight->"Bold",
      FontSlant->"Plain"], "1"], 
    FormBox["\[NotEqual]",
     TraditionalForm], " ", 
    FormBox[
     StyleBox["0",
      FontWeight->"Bold",
      FontSlant->"Plain"],
     TraditionalForm]}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    StyleBox["v",
     FontWeight->"Bold",
     FontSlant->"Plain"], "2"], TraditionalForm]]],
 " is not a multiple of ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    StyleBox["v",
     FontWeight->"Bold",
     FontSlant->"Plain"], "1"], TraditionalForm]]],
 ", but ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    FormBox[
     StyleBox["v",
      FontWeight->"Bold",
      FontSlant->"Plain"],
     TraditionalForm], "3"], TraditionalForm]]],
 " is a multiple of ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    StyleBox["v",
     FontWeight->"Bold",
     FontSlant->"Plain"], "2"], TraditionalForm]]],
 ". By the Spanning Set Theorem, we may discard ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    StyleBox["v",
     FontWeight->"Bold",
     FontSlant->"Plain"], "3"], TraditionalForm]]],
 " and still have a set that spans ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ". Finally, ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    FormBox[
     StyleBox["v",
      FontWeight->"Bold",
      FontSlant->"Plain"],
     TraditionalForm], "4"], TraditionalForm]]],
 " is not a linear combination of ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    StyleBox["v",
     FontWeight->"Bold",
     FontSlant->"Plain"], "1"], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    StyleBox["v",
     FontWeight->"Bold",
     FontSlant->"Plain"], "2"], TraditionalForm]]],
 ". So ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{
     FormBox[
      SubscriptBox[
       StyleBox["v",
        FontWeight->"Bold",
        FontSlant->"Plain"], "1"],
      TraditionalForm], ",", 
     FormBox[
      SubscriptBox[
       StyleBox["v",
        FontWeight->"Bold",
        FontSlant->"Plain"], "2"],
      TraditionalForm], ",", 
     FormBox[
      SubscriptBox[
       FormBox[
        StyleBox["v",
         FontWeight->"Bold",
         FontSlant->"Plain"],
        TraditionalForm], "4"],
      TraditionalForm]}], "}"}], TraditionalForm]]],
 " is linearly independent (by Theorem 4 in Section 4.3) and hence is a basis \
for ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ". Thus ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", "H"}], "=", "3"}], TraditionalForm]]],
 ".",
 " "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292204488018885`*^9, 3.6292204497394376`*^9}, {3.629223013259314*^9, 
   3.629223013415572*^9}, {3.6292243410109086`*^9, 3.6292245654688563`*^9}, 
   3.6296640118931007`*^9, {3.6342232941148453`*^9, 3.634223295239789*^9}}],

Cell[TextData[StyleBox["\[FilledSquare]", "SolutionEndFont"]], "Text",
 TextAlignment->Right]
}, Closed]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["EXAMPLE 4", "ExampleFont"]], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{3.629224580829028*^9},
 CellTags->"EXAMPLE 4"],

Cell[TextData[{
 "The subspaces of ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["\[DoubleStruckCapitalR]", "3"], TraditionalForm]]],
 " can be classified by dimension. See Figure 1. "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, 
   3.6292202539398794`*^9, {3.6292204498488207`*^9, 3.6292204500832047`*^9}, {
   3.629224585735507*^9, 3.6292246196122727`*^9}}],

Cell[TextData[{
 StyleBox["0-dimensional subspaces",
  FontSlant->"Italic"],
 ".",
 " ",
 "Only the zero subspace. "
}], "Item",
 CellDingbat->"",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.629220256156086*^9}, 3.629220450192585*^9, {
   3.629224633378603*^9, 3.62922465696164*^9}, 3.629224708589343*^9, 
   3.6296640142994776`*^9}],

Cell[TextData[{
 "1",
 StyleBox["-dimensional subspaces.",
  FontSlant->"Italic"],
 " ",
 "Any subspace spanned by a single nonzero vector. Such subspaces are lines \
through the origin. "
}], "Item",
 CellDingbat->"",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.629220257937428*^9}, {3.6292204503175926`*^9, 
   3.6292204504269733`*^9}, 3.629224673290636*^9, {3.62922471341772*^9, 
   3.629224714574007*^9}, 3.6296640151745214`*^9}],

Cell[TextData[{
 "2",
 StyleBox["-dimensional subspaces.",
  FontSlant->"Italic"],
 " ",
 "Any subspace spanned by two linearly independent vectors. Such subspaces \
are planes through the origin. "
}], "Item",
 CellDingbat->"",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.629220264469001*^9}, {3.62922045055198*^9, 
   3.6292204507863665`*^9}, {3.629224689619612*^9, 3.6292247194492846`*^9}, 
   3.6296640158933086`*^9}],

Cell[TextData[{
 "3",
 StyleBox["-dimensional subspaces",
  FontSlant->"Italic"],
 ".",
 " ",
 "Only ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["\[DoubleStruckCapitalR]", "3"], TraditionalForm]]],
 " itself. Any three linearly independent vectors in ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["\[DoubleStruckCapitalR]", "3"], TraditionalForm]]],
 " span all of ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["\[DoubleStruckCapitalR]", "3"], TraditionalForm]]],
 ", by the Invertible Matrix Theorem."
}], "Item",
 CellDingbat->"",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.62922026703974*^9}, {3.629220450895746*^9, 
   3.629220451364521*^9}, {3.629224599783105*^9, 3.629224600158123*^9}, {
   3.629224696807482*^9, 3.6292247491695757`*^9}, {3.6296640237218404`*^9, 
   3.6296640342380123`*^9}}],

Cell[BoxData[
 TemplateBox[{TagBox[
    GridBox[{{
       TagBox[
        StyleBox[
         DynamicModuleBox[{$CellContext`a$$ = 2, $CellContext`b$$ = 4, 
           Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
           Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, 
           Typeset`animvar$$ = 1, Typeset`name$$ = "\"untitled\"", 
           Typeset`specs$$ = {{{
               Hold[$CellContext`a$$], 2}, 1., 4., 
              Rational[1, 10]}, {{
               Hold[$CellContext`b$$], 4}, 1., 4., 
              Rational[1, 10]}}, 
           Typeset`size$$ = {630., {71.40625, 78.59375}}, Typeset`update$$ = 
           0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
           False, $CellContext`a$21443$$ = 0, $CellContext`b$21444$$ = 0}, 
          DynamicBox[
           Manipulate`ManipulateBoxes[
           1, StandardForm, 
            "Variables" :> {$CellContext`a$$ = 2, $CellContext`b$$ = 4}, 
            "ControllerVariables" :> {
              Hold[$CellContext`a$$, $CellContext`a$21443$$, 0], 
              Hold[$CellContext`b$$, $CellContext`b$21444$$, 0]}, 
            "OtherVariables" :> {
             Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
              Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
              Typeset`specs$$, Typeset`size$$, Typeset`update$$, 
              Typeset`initDone$$, Typeset`skipInitDone$$}, "Body" :> Grid[{{
                Graphics3D[{$CellContext`jblue, 
                  Sphere[{0, 0, 0}, 0.3]}, Lighting -> "Neutral", Ticks -> 
                 False, Axes -> True, AxesOrigin -> {0, 0, 0}, 
                 ImageSize -> {150, 150}, 
                 BaseStyle -> $CellContext`jbasestyle, ViewPoint -> {4, 2, 2},
                  PlotRange -> {{-4, 4}, {-4, 4}, {-4, 4}}, AspectRatio -> 1, 
                 PlotLabel -> "0-dimensional"], 
                Graphics3D[{$CellContext`jblue, 
                  
                  Line[{{(-4) $CellContext`a$$, (-4) $CellContext`b$$, 
                    4 $CellContext`a$$ + $CellContext`b$$}, {
                    4 $CellContext`a$$, 
                    4 $CellContext`b$$, (-4) $CellContext`a$$ - \
$CellContext`b$$}}]}, Lighting -> "Neutral", Ticks -> False, Axes -> True, 
                 AxesOrigin -> {0, 0, 0}, ImageSize -> {150, 150}, 
                 BaseStyle -> $CellContext`jbasestyle, ViewPoint -> {4, 2, 2},
                  PlotRange -> {{-4, 4}, {-4, 4}, {-4, 4}}, AspectRatio -> 1, 
                 PlotLabel -> "1-dimensional"], 
                Graphics3D[{$CellContext`jblue, 
                  Opacity[0.5], 
                  
                  Polygon[{{
                    8 $CellContext`a$$, 6 $CellContext`b$$, 
                    4 $CellContext`a$$ - $CellContext`b$$}, {
                    8 $CellContext`b$$, 
                    4 $CellContext`a$$, (-4) $CellContext`a$$}, {(-8) \
$CellContext`a$$, (-6) $CellContext`b$$, (-4) $CellContext`a$$ + \
$CellContext`b$$}, {(-8) $CellContext`b$$, (-4) $CellContext`a$$, 
                    4 $CellContext`a$$}}]}, Lighting -> "Neutral", Ticks -> 
                 False, Axes -> True, AxesOrigin -> {0, 0, 0}, 
                 ImageSize -> {150, 150}, 
                 BaseStyle -> $CellContext`jbasestyle, ViewPoint -> {4, 2, 2},
                  PlotRange -> {{-4, 4}, {-4, 4}, {-4, 4}}, AspectRatio -> 1, 
                 PlotLabel -> "2-dimensional"], 
                Graphics3D[{$CellContext`jblue, 
                  Opacity[0.3], 
                  Cuboid[{{-4, -4, -4}, {4, 4, 4}}]}, Lighting -> "Neutral", 
                 Ticks -> False, Axes -> True, AxesOrigin -> {0, 0, 0}, 
                 ImageSize -> {150, 150}, 
                 BaseStyle -> $CellContext`jbasestyle, ViewPoint -> {4, 2, 2},
                  PlotRange -> {{-4, 4}, {-4, 4}, {-4, 4}}, AspectRatio -> 1, 
                 PlotLabel -> "3-dimensional"]}}], 
            "Specifications" :> {{{$CellContext`a$$, 2}, 1., 4., 
               Rational[1, 10], ControlType -> 
               Slider}, {{$CellContext`b$$, 4}, 1., 4., 
               Rational[1, 10], ControlType -> Slider}}, 
            "Options" :> {
             AppearanceElements -> "ResetButton", 
              BaseStyle -> {FontFamily -> "Times", 14}, FrameLabel -> {
                Style[
                "Sample subspaces of \!\(TraditionalForm\`\*SuperscriptBox[\(\
\[DoubleStruckCapitalR]\), \(3\)]\).", {FontFamily -> "Times", 16}]}, 
              ControlPlacement -> Bottom}, "DefaultOptions" :> {}], 
           ImageSizeCache -> {675., {143., 150.}}, SingleEvaluation -> True], 
          Deinitialization :> None, DynamicModuleValues :> {}, 
          Initialization :> ({$CellContext`jblue = 
             RGBColor[0, 0, 1], $CellContext`jbasestyle = {
              FontFamily -> "Times", 14}}; Typeset`initDone$$ = True), 
          SynchronousInitialization -> True, 
          UnsavedVariables :> {Typeset`initDone$$}, 
          UntrackedVariables :> {Typeset`size$$}], "Manipulate", Deployed -> 
         True, StripOnInput -> False, FontFamily -> "Times", FontSize -> 14], 
        
        Manipulate`InterpretManipulate[1]]}}, AutoDelete -> False, 
     GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Bottom}}}, 
     GridBoxItemSize -> {
      "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], "Grid"],StyleBox[
   "\"FIGURE 1\[FilledDiamond]\"", "FigureFont", StripOnInput -> False]},
  "Labeled",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"]}, {
      ItemBox[#2, Alignment -> {Left, Inherited}, DefaultBaseStyle -> 
       "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, 
    GridBoxItemSize -> {"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
    BaselinePosition -> {1, 1}]& ),
  InterpretationFunction->(RowBox[{"Labeled", "[", 
     RowBox[{#, ",", #2, ",", 
       RowBox[{"{", 
         RowBox[{"{", 
           RowBox[{"Bottom", ",", "Left"}], "}"}], "}"}]}], 
     "]"}]& )]], "Output",
 CellChangeTimes->{3.636638305706745*^9},
 CellTags->"FIGURE 1\[FilledDiamond]:  Dimensions of Subspaces"],

Cell[TextData[StyleBox["\[FilledSquare]", "SolutionEndFont"]], "Text",
 TextAlignment->Right]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Subspaces of a Finite-Dimensional Space", "Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.6292263705268593`*^9, 3.629226372339465*^9}},
 CellTags->"Subspaces of a Finite-Dimensional Space"],

Cell["\<\
The next theorem is a natural counterpart to the Spanning Set Theorem.\
\>", "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292202725556498`*^9}, {3.6292204523176975`*^9, 
   3.629220452802096*^9}, {3.629226379871107*^9, 3.6292263839806905`*^9}}],

Cell[TextData[{
 StyleBox["THEOREM 11", "TheoremFont"],
 "\nLet ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 " be a subspace of a finite-dimensional vector space ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". Any linearly independent set in ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 " can be expanded, if necessary, to a basis for ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ". Also, ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 " is finite-dimensional and\n",
 Cell[BoxData[
  FormBox[GridBox[{
     {GridBox[{
        {
         RowBox[{
          RowBox[{"dim", " ", "H"}], 
          FormBox["\[LessEqual]",
           TraditionalForm], 
          RowBox[{"dim", " ", "V"}]}]}
       },
       GridBoxAlignment->{"Columns" -> {{"Center"}}}]}
    },
    GridBoxItemSize->{"Columns" -> {{
         Scaled[0.96]}}}], TraditionalForm]]]
}], "Theorem",
 CellChangeTimes->{{3.6292263967938576`*^9, 3.6292264000440288`*^9}, {
   3.629226493426301*^9, 3.6292264980827985`*^9}, 3.636560501790867*^9},
 CellTags->"THEOREM 11 Dimension of Subspaces"],

Cell[TextData[{
 StyleBox["PROOF", "ProofFont"],
 "  If ",
 Cell[BoxData[
  FormBox[
   RowBox[{"H", "=", 
    RowBox[{"{", 
     FormBox[
      StyleBox["0",
       FontWeight->"Bold",
       FontSlant->"Plain"],
      TraditionalForm], "}"}]}], TraditionalForm]]],
 ", then certainly ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", "H"}], "=", 
    RowBox[{"0", 
     FormBox["\[LessEqual]",
      TraditionalForm], 
     RowBox[{"dim", " ", "V"}]}]}], TraditionalForm]]],
 ". Otherwise, let ",
 Cell[BoxData[
  FormBox[
   RowBox[{"S", "=", 
    FormBox[
     RowBox[{"{", 
      RowBox[{
       SubscriptBox[
        FormBox[
         StyleBox["u",
          FontWeight->"Bold",
          FontSlant->"Plain"],
         TraditionalForm], "1"], ",", 
       FormBox["\[Ellipsis]",
        TraditionalForm], ",", 
       SubscriptBox[
        FormBox[
         StyleBox["u",
          FontWeight->"Bold",
          FontSlant->"Plain"],
         TraditionalForm], "k"]}], "}"}],
     TraditionalForm]}], TraditionalForm]]],
 " be any linearly independent set in ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ".",
 " ",
 "If ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " spans ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ", then ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " is a basis for ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ". Otherwise, there is some ",
 Cell[BoxData[
  FormBox[
   SubscriptBox[
    FormBox[
     StyleBox["u",
      FontWeight->"Bold",
      FontSlant->"Plain"],
     TraditionalForm], 
    RowBox[{"k", "+", "1"}]], TraditionalForm]]],
 " in ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 " that is not in ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Span", " ", "S"}], TraditionalForm]]],
 ". But then ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "1"], ",", 
     FormBox["\[Ellipsis]",
      TraditionalForm], ",", 
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "k"], ",", 
     SubscriptBox[
      FormBox[
       StyleBox["u",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], 
      RowBox[{"k", "+", "1"}]]}], "}"}], TraditionalForm]]],
 " will be linearly independent, because no vector in the set can be a linear \
combination of vectors that precede it (by Theorem 4). "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.629220285134428*^9}, {3.629220453724018*^9, 
   3.6292204546615677`*^9}, 3.6292209776166973`*^9, {3.629222455269366*^9, 
   3.6292224555350037`*^9}, {3.6292230142281137`*^9, 3.629223014712515*^9}, {
   3.6292265298656874`*^9, 3.6292267231291456`*^9}, 3.6296640356523542`*^9, {
   3.634223350094721*^9, 3.6342233539645443`*^9}, 3.634892960419342*^9}],

Cell[TextData[{
 "\tSo long as the new set does not span ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ", we can continue this process of expanding ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " to a larger linearly independent set in ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ". But the number of vectors in a linearly independent expansion of ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " can never exceed the dimension of ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ", by Theorem 9. So eventually the expansion of ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " will span ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 " and hence will be a basis for ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ", and ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", "H"}], 
    FormBox["\[LessEqual]",
     TraditionalForm], 
    RowBox[{"dim", " ", "V"}]}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292202891190104`*^9}, {3.6292204547709484`*^9, 
   3.6292204554741106`*^9}, {3.629222455706889*^9, 3.6292224560350313`*^9}, {
   3.6292230148843985`*^9, 3.629223015384424*^9}, 3.6292264224538555`*^9, {
   3.6292267275199995`*^9, 3.629226788620718*^9}, {3.634223370074438*^9, 
   3.634223370861774*^9}}],

Cell[TextData[StyleBox["\[FilledSquare]", "ProofEndFont"]], "Text",
 TextAlignment->Right],

Cell["\<\
\tWhen the dimension of a vector space or subspace is known, the search for a \
basis is simplified by the next theorem. It says that if a set has the right \
number of elements, then one has only to show either that the set is linearly \
independent or that it spans the space. The theorem is of critical importance \
in numerous applied problems (involving differential equations or difference \
equations, for example) where linear independence is much easier to verify \
than spanning. \
\>", "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.629220315807895*^9}, {3.6292204555834913`*^9, 
   3.629220456552291*^9}, {3.629226804152762*^9, 3.629226825198718*^9}, {
   3.6296640366992846`*^9, 3.6296640375430794`*^9}}],

Cell[TextData[{
 StyleBox["THEOREM 12\tThe Basis Theorem", "TheoremFont"],
 "\nLet ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " be a ",
 Cell[BoxData[
  FormBox["p", TraditionalForm]]],
 "-dimensional vector space, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"p", "\[GreaterEqual]", "1"}], TraditionalForm]]],
 ". Any linearly independent set of exactly ",
 Cell[BoxData[
  FormBox["p", TraditionalForm]]],
 " elements in ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is automatically a basis for ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". Any set of exactly ",
 Cell[BoxData[
  FormBox["p", TraditionalForm]]],
 " elements that spans ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is automatically a basis for ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". "
}], "Theorem",
 CellChangeTimes->{{3.6292268545187683`*^9, 3.6292268678632183`*^9}, {
   3.6292269534518957`*^9, 3.6292269577958736`*^9}, 3.629664039074408*^9, {
   3.6342233774745493`*^9, 3.634223386160322*^9}},
 CellTags->"THEOREM 12 The Basis Theorem"],

Cell[TextData[{
 StyleBox["PROOF  ", "ProofFont"],
 "By Theorem 11, a linearly independent set ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " of ",
 Cell[BoxData[
  FormBox["p", TraditionalForm]]],
 " elements can be extended to a basis for ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". But that basis must contain exactly ",
 Cell[BoxData[
  FormBox["p", TraditionalForm]]],
 " elements, since ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", "V"}], "=", "p"}], TraditionalForm]]],
 ". So ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " must already be a basis for ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". Now suppose that ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " has ",
 Cell[BoxData[
  FormBox["p", TraditionalForm]]],
 " elements and spans ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". Since ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is nonzero, the Spanning Set Theorem implies that a subset ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["S", "\[Prime]"], TraditionalForm]]],
 " of ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " ",
 "is a basis of ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". Since ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", "V"}], "=", "p"}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["S", "\[Prime]"], TraditionalForm]]],
 "must contain ",
 Cell[BoxData[
  FormBox["p", TraditionalForm]]],
 " vectors. Hence ",
 Cell[BoxData[
  FormBox[
   RowBox[{"S", "=", 
    SuperscriptBox["S", "\[Prime]"]}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203200112133`*^9}, {3.629220456661671*^9, 
   3.6292204577554827`*^9}, {3.629220685654419*^9, 3.6292206859825697`*^9}, 
   3.629220977788581*^9, {3.629226422610114*^9, 3.6292264227819953`*^9}, {
   3.6292268738479104`*^9, 3.629227279897409*^9}, {3.629664044595314*^9, 
   3.6296640465372696`*^9}}],

Cell[TextData[StyleBox["\[FilledSquare]", "ProofEndFont"]], "Text",
 TextAlignment->Right]
}, Closed]],

Cell[CellGroupData[{

Cell[TextData[{
 "The Dimensions of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Nul", " ", "A"}], TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Col", " ", "A"}], TraditionalForm]]]
}], "Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.629227302257948*^9, 3.6292273270293355`*^9}, {
  3.63422304395713*^9, 3.63422304825795*^9}},
 CellTags->"The Dimensions of Nul A and Col A"],

Cell[TextData[{
 "Since the pivot columns of a matrix ",
 Cell[BoxData[
  FormBox["A", TraditionalForm]]],
 " form a basis for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Col", " ", "A"}], TraditionalForm]]],
 ", we know the dimension of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Col", " ", "A"}], TraditionalForm]]],
 " as soon as we know the pivot columns. The dimension of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Nul", " ", "A"}], TraditionalForm]]],
 " might seem to require more work, since finding a basis for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Nul", " ", "A"}], TraditionalForm]]],
 " usually takes more time than a basis for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Col", " ", "A"}], TraditionalForm]]],
 ". But there is a shortcut! "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203286523128`*^9}, {3.6292204591774263`*^9, 
   3.62922045969308*^9}, {3.6292273669845285`*^9, 3.629227445707367*^9}}],

Cell[TextData[{
 "\tLet ",
 Cell[BoxData[
  FormBox["A", TraditionalForm]]],
 " be an ",
 Cell[BoxData[
  FormBox[
   RowBox[{"m", "\[Cross]", "n"}], TraditionalForm]]],
 " matrix, and suppose the equation ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"A", "\[VeryThinSpace]", 
     StyleBox["x",
      FontWeight->Bold,
      FontSlant->Plain]}], "=", 
    StyleBox["0",
     FontWeight->Bold,
     FontSlant->Plain]}], TraditionalForm]]],
 " has ",
 Cell[BoxData[
  FormBox["k", TraditionalForm]]],
 " free variables. From Section 4.2, we know that the standard method of \
finding a spanning set for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Nul", " ", "A"}], TraditionalForm]]],
 " will produce exactly ",
 Cell[BoxData[
  FormBox["k", TraditionalForm]]],
 " linearly independent vectors\[LongDash]say, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox[
     FormBox[
      StyleBox["u",
       FontWeight->"Bold",
       FontSlant->"Plain"],
      TraditionalForm], "1"], ",", 
    FormBox["\[Ellipsis]",
     TraditionalForm], ",", 
    SubscriptBox[
     FormBox[
      StyleBox["u",
       FontWeight->"Bold",
       FontSlant->"Plain"],
      TraditionalForm], "k"]}], TraditionalForm]]],
 "\[LongDash]one for each free variable. So ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox[
     FormBox[
      StyleBox["u",
       FontWeight->"Bold",
       FontSlant->"Plain"],
      TraditionalForm], "1"], ",", 
    FormBox["\[Ellipsis]",
     TraditionalForm], ",", 
    SubscriptBox[
     FormBox[
      StyleBox["u",
       FontWeight->"Bold",
       FontSlant->"Plain"],
      TraditionalForm], "k"]}], TraditionalForm]]],
 " is a basis for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Nul", " ", "A"}], TraditionalForm]]],
 ", and the number of free variables determines the size of the basis. Let us \
summarize these facts for future reference. "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.629220332340004*^9}, {3.6292204598180857`*^9, 
   3.6292204609900208`*^9}, {3.629227387469967*^9, 3.6292274082679214`*^9}, {
   3.629227453832806*^9, 3.629227587843053*^9}, 3.6296640477092056`*^9, {
   3.634223413047628*^9, 3.634223413971221*^9}}],

Cell[TextData[{
 "The dimension of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Nul", " ", "A"}], TraditionalForm]]],
 " is the number of free variables in the equation ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"A", "\[VeryThinSpace]", 
     StyleBox["x",
      FontWeight->Bold,
      FontSlant->Plain]}], "=", 
    StyleBox["0",
     FontWeight->Bold,
     FontSlant->Plain]}], TraditionalForm]]],
 ", and the dimension of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Col", " ", "A"}], TraditionalForm]]],
 " is the number of pivot columns in ",
 Cell[BoxData[
  FormBox["A", TraditionalForm]]],
 "."
}], "BeigeBackgroundCell",
 CellChangeTimes->{{3.62922761108996*^9, 3.6292276322316895`*^9}, {
  3.634223427064601*^9, 3.634223428348571*^9}}],

Cell[CellGroupData[{

Cell[TextData[StyleBox["EXAMPLE 5", "ExampleFont"]], "Subsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{3.629227667139743*^9},
 CellTags->"EXAMPLE 5"],

Cell["\<\
Find the dimensions of the null space and the column space of\
\>", "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203371371293`*^9}, {3.629220461693184*^9, 
   3.629220461802563*^9}, 3.6292276717816277`*^9}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {
     RowBox[{GridBox[{
        {
         RowBox[{"A", "="}]}
       },
       GridBoxAlignment->{"Columns" -> {{"Center"}}}], 
      TagBox[GridBox[{
         {
          
          GraphicsBox[{LineBox[{{0, 0}, {0, 25}}], 
            LineBox[{{0, 25}, {1, 25}}], LineBox[{{0, 0}, {1, 0}}]},
           ImageSize->{5, 50}], 
          TagBox[GridBox[{
             {
              RowBox[{"-", "3"}], "6", 
              RowBox[{"-", "1"}], "1", 
              RowBox[{"-", "7"}]},
             {"1", 
              RowBox[{"-", "2"}], "2", "3", 
              RowBox[{"-", "1"}]},
             {"2", 
              RowBox[{"-", "4"}], "5", "8", 
              RowBox[{"-", "4"}]}
            },
            AutoDelete->False,
            GridBoxAlignment->{"Columns" -> {{Right}}},
            
            GridBoxItemSize->{
             "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
           "Grid"], 
          
          GraphicsBox[{LineBox[{{1, 0}, {1, 25}}], 
            LineBox[{{0, 25}, {1, 25}}], LineBox[{{0, 0}, {1, 0}}]},
           ImageSize->{5, 50}]}
        },
        AutoDelete->False,
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{0}}}],
       "Grid"]}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.6292277983975687`*^9, 3.6292278057573333`*^9}}],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SOLUTION", "SolutionFont"]], "Subsubsubsubsection",
 WholeCellGroupOpener->True],

Cell[TextData[{
 "Row reduce the augmented matrix ",
 Cell[BoxData[
  FormBox[
   RowBox[{"[", GridBox[{
      {"A", 
       FormBox[
        StyleBox["0",
         FontWeight->"Bold",
         FontSlant->"Plain"],
        TraditionalForm]}
     }], "]"}], TraditionalForm]]],
 " to echelon form: "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203428405294`*^9}, {3.629220462521351*^9, 
   3.6292204634432735`*^9}, 3.6292277005956216`*^9, {3.629227831633679*^9, 
   3.629227887076062*^9}, {3.634225377410853*^9, 3.634225377410873*^9}}],

Cell[TextData[Cell[BoxData[
 FormBox[GridBox[{
    {GridBox[{
       {
        TagBox[GridBox[{
           {
            
            GraphicsBox[{LineBox[{{0, 0}, {0, 25}}], 
              LineBox[{{0, 25}, {1, 25}}], LineBox[{{0, 0}, {1, 0}}]},
             ImageSize->{5, 50}], 
            TagBox[GridBox[{
               {"1", 
                RowBox[{"-", "2"}], "2", "3", 
                RowBox[{"-", "1"}], "0"},
               {"0", "0", "1", "2", 
                RowBox[{"-", "2"}], "0"},
               {"0", "0", "0", "0", "0", "0"}
              },
              AutoDelete->False,
              GridBoxAlignment->{"Columns" -> {{Right}}},
              
              GridBoxItemSize->{
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
             "Grid"], 
            
            GraphicsBox[{LineBox[{{1, 0}, {1, 25}}], 
              LineBox[{{0, 25}, {1, 25}}], LineBox[{{0, 0}, {1, 0}}]},
             ImageSize->{5, 50}]}
          },
          AutoDelete->False,
          
          GridBoxItemSize->{
           "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
          GridBoxSpacings->{"Columns" -> {{0}}}],
         "Grid"]}
      },
      GridBoxAlignment->{"Columns" -> {{"Center"}}}]}
   },
   GridBoxItemSize->{"Columns" -> {{
        Scaled[0.96]}}}], TraditionalForm]]]], "Text",
 CellChangeTimes->{{3.629227890310599*^9, 3.629227897857871*^9}}],

Cell[TextData[{
 "There are three free variables\[LongDash]",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "2"], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "4"], TraditionalForm]]],
 ", and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "5"], TraditionalForm]]],
 ". Hence the dimension of ",
 Cell[BoxData[
  FormBox[
   RowBox[{"Nul", " ", "A"}], TraditionalForm]]],
 " is 3. Also, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", "Col", " ", "A"}], "=", "2"}], TraditionalForm]]],
 " because ",
 Cell[BoxData[
  FormBox["A", TraditionalForm]]],
 " has two pivot columns."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203484501867`*^9}, {3.629220463568281*^9, 
   3.629220464380823*^9}, {3.6292273879699955`*^9, 3.6292274085960655`*^9}, {
   3.6292279096553645`*^9, 3.629228017598468*^9}, 3.6296640490999002`*^9, {
   3.634225384269144*^9, 3.6342254138342457`*^9}}],

Cell[TextData[StyleBox["\[FilledSquare]", "SolutionEndFont"]], "Text",
 TextAlignment->Right]
}, Closed]]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["PRACTICE PROBLEMS", "PracticeProblemFont"]], \
"Subsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.6292280394572897`*^9, 3.6292280424418077`*^9}},
 CellTags->"PRACTICE PROBLEMS"],

Cell[TextData[{
 StyleBox["1.",
  FontWeight->"Bold"],
 "  Decide whether each statement is True or False, and give a reason for \
each answer. Here ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " is a nonzero finite-dimensional vector space. "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203508878407`*^9}, {3.629220464505829*^9, 
   3.629220464849597*^9}, 3.629220686388834*^9, {3.629228162291786*^9, 
   3.629228175542479*^9}, {3.629228285692224*^9, 3.629228287426689*^9}, 
   3.6296640536626368`*^9, 3.634223088260337*^9}],

Cell[TextData[{
 "a.  If ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", "V"}], "=", "p"}], TraditionalForm]]],
 " and if ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " is a linearly dependent subset of ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ", then ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " contains more than ",
 Cell[BoxData[
  FormBox["p", TraditionalForm]]],
 " vectors. "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203563256245`*^9}, {3.6292204649589915`*^9, 
   3.6292204653183713`*^9}, {3.629222456878824*^9, 3.6292224570507083`*^9}, 
   3.629226423594539*^9, {3.6292281889181733`*^9, 3.6292282345645657`*^9}, {
   3.629228283035841*^9, 3.6292282917550516`*^9}, 3.6296640598348475`*^9}],

Cell[TextData[{
 "b.",
 StyleBox["  ",
  FontWeight->"Bold"],
 "If ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " spans ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " and if ",
 Cell[BoxData[
  FormBox["T", TraditionalForm]]],
 " is a subset of ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 " that contains more vectors than ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 ", then ",
 Cell[BoxData[
  FormBox["T", TraditionalForm]]],
 " is linearly dependent. "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203587788763`*^9}, {3.6292204654433775`*^9, 
   3.629220465787146*^9}, {3.629220686545091*^9, 3.6292206867013493`*^9}, {
   3.6292224572225924`*^9, 3.6292224574101024`*^9}, {3.629228242049345*^9, 
   3.62922829545835*^9}}],

Cell[TextData[{
 StyleBox["2.",
  FontWeight->"Bold"],
 "  Let ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 " and ",
 Cell[BoxData[
  FormBox["K", TraditionalForm]]],
 " be subspaces of a vector space ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". In Section 4.1 Exercise 32 it is established that ",
 Cell[BoxData[
  FormBox[
   RowBox[{"H", "\[Intersection]", "K"}], TraditionalForm]]],
 " is also a subspace of ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 ". Prove ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", 
     RowBox[{"(", 
      RowBox[{"H", "\[Intersection]", "K"}], ")"}]}], "\[LessEqual]", 
    RowBox[{"dim", " ", 
     FormBox["H",
      TraditionalForm]}]}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203587788763`*^9}, {3.629220398175392*^9, 
   3.6292204037850237`*^9}, {3.6292204658965254`*^9, 3.629220467646617*^9}, {
   3.629223015556308*^9, 3.6292230157125654`*^9}, {3.629226423766428*^9, 
   3.629226423922679*^9}, 3.629228061036533*^9, {3.629228314787485*^9, 
   3.6292283393981333`*^9}, {3.6292284026709023`*^9, 
   3.6292284617677174`*^9}, {3.634225429989452*^9, 3.634225432149087*^9}}],

Cell[CellGroupData[{

Cell[TextData[StyleBox["SOLUTIONS TO PRACTICE PROBLEMS", \
"PracticeProblemFont"]], "Subsubsubsubsection",
 WholeCellGroupOpener->True,
 CellChangeTimes->{{3.629228070646408*^9, 3.629228100476079*^9}}],

Cell[TextData[{
 StyleBox["1. ",
  FontWeight->"Bold"],
 "  \na.  False. Consider the set ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    FormBox[
     StyleBox["0",
      FontWeight->"Bold",
      FontSlant->"Plain"],
     TraditionalForm], "}"}], TraditionalForm]]],
 ". "
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203587788763`*^9}, {3.629220398175392*^9, 
   3.6292204037850237`*^9}, {3.6292204658965254`*^9, 3.629220467646617*^9}, {
   3.629223015556308*^9, 3.6292230157125654`*^9}, {3.629226423766428*^9, 
   3.629226423922679*^9}, 3.629228061036533*^9, {3.629228107492076*^9, 
   3.629228136993601*^9}, {3.6292284710182004`*^9, 3.6292284799717903`*^9}, 
   3.634225438540287*^9}],

Cell[TextData[{
 "b.  True. By the Spanning Set Theorem, ",
 Cell[BoxData[
  FormBox["S", TraditionalForm]]],
 " contains a basis for ",
 Cell[BoxData[
  FormBox["V", TraditionalForm]]],
 "; call that basis ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["S", "\[Prime]"], TraditionalForm]]],
 ". Then ",
 Cell[BoxData[
  FormBox["T", TraditionalForm]]],
 " will contain more vectors than ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["S", "\[Prime]"], TraditionalForm]]],
 ".",
 " ",
 "By Theorem 9, ",
 Cell[BoxData[
  FormBox["T", TraditionalForm]]],
 " is linearly dependent."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203587788763`*^9}, {3.629220398175392*^9, 
   3.6292204070287957`*^9}, {3.629220467756002*^9, 3.6292204683810296`*^9}, 
   3.629222457581986*^9, 3.6292264240945625`*^9, {3.629228141228196*^9, 
   3.6292281430095415`*^9}, {3.6292284848314238`*^9, 
   3.6292285511161327`*^9}, {3.6296640730542707`*^9, 3.629664075741909*^9}}],

Cell[TextData[{
 StyleBox["2.",
  FontWeight->"Bold"],
 "  Let ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{
     SubscriptBox[
      FormBox[
       StyleBox["v",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "1"], ",", 
     FormBox["\[Ellipsis]",
      TraditionalForm], ",", 
     SubscriptBox[
      FormBox[
       StyleBox["v",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "p"]}], "}"}], TraditionalForm]]],
 " be a basis for ",
 Cell[BoxData[
  FormBox[
   RowBox[{"H", "\[Intersection]", "K"}], TraditionalForm]]],
 ". Notice ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{
     SubscriptBox[
      FormBox[
       StyleBox["v",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "1"], ",", 
     FormBox["\[Ellipsis]",
      TraditionalForm], ",", 
     SubscriptBox[
      FormBox[
       StyleBox["v",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "p"]}], "}"}], TraditionalForm]]],
 " is a linearly independent subset of ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ", hence by Theorem 11, ",
 Cell[BoxData[
  FormBox[
   RowBox[{"{", 
    RowBox[{
     SubscriptBox[
      FormBox[
       StyleBox["v",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "1"], ",", 
     FormBox["\[Ellipsis]",
      TraditionalForm], ",", 
     SubscriptBox[
      FormBox[
       StyleBox["v",
        FontWeight->"Bold",
        FontSlant->"Plain"],
       TraditionalForm], "p"]}], "}"}], TraditionalForm]]],
 " can be expanded, if necessary, to a basis for ",
 Cell[BoxData[
  FormBox["H", TraditionalForm]]],
 ". Since the dimension of a subspace is just the number of vectors in a \
basis, it follows that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"dim", " ", 
     RowBox[{"(", 
      RowBox[{"H", "\[Intersection]", "K"}], ")"}]}], "=", 
    RowBox[{"p", "\[LessEqual]", 
     RowBox[{"dim", " ", 
      FormBox["H",
       TraditionalForm]}]}]}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{
  3.6288086958185987`*^9, {3.629220151894905*^9, 3.629220205514621*^9}, {
   3.6292202539398794`*^9, 3.6292203587788763`*^9}, {3.629220398175392*^9, 
   3.6292204101852093`*^9}, {3.629220468506037*^9, 3.6292204688654304`*^9}, {
   3.6292230158844495`*^9, 3.629223016243848*^9}, {3.629228559241534*^9, 
   3.6292286760852222`*^9}, 3.629664085258028*^9, {3.6342254616036053`*^9, 
   3.634225467271652*^9}}]
}, Closed]]
}, Closed]]
}, Open  ]]
},
Editable->False,
Saveable->False,
Selectable->True,
WindowSize->{1024, 720},
WindowMargins->{{5, Automatic}, {Automatic, 5}},
WindowTitle->"Section 4.5 The Dimension of a Vector Space",
DockedCells->Cell[
  BoxData[
   TagBox[
    GridBox[{{
       PaneBox[
       "\"P\[VeryThinSpace]E\[VeryThinSpace]A\[VeryThinSpace]R\[VeryThinSpace]\
S\[VeryThinSpace]O\[VeryThinSpace]N\"", 
        BaseStyle -> {
         FontColor -> GrayLevel[0.95], FontFamily -> "SR", FontSize -> 12, 
          Background -> 
          RGBColor[
           0.21568627450980393`, 0.27450980392156865`, 0.5764705882352941]}, 
        Alignment -> Center, ImageSize -> {70, 30}], 
       InterpretationBox[
        StyleBox[
         GraphicsBox[{}, ImageSize -> {3, 0}, BaselinePosition -> Baseline], 
         "CacheGraphics" -> False], 
        Spacer[3]], 
       PaneBox[
        StyleBox[
         TagBox[
          GridBox[{{
             StyleBox[
             "\"Linear Algebra and Its Applications\"", "SR", Bold, 14, 
              StripOnInput -> False]}}, 
           GridBoxAlignment -> {"Columns" -> {{Left}}}, AutoDelete -> False, 
           GridBoxItemSize -> {
            "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
           GridBoxSpacings -> {"Columns" -> {{0}}}], "Grid"], Bold, 
         StripOnInput -> False], Alignment -> {Left, Center}, 
        BaselinePosition -> Center, ImageSize -> {267, 30}], 
       InterpretationBox[
        StyleBox[
         GraphicsBox[{}, ImageSize -> {
            Dynamic[
             Max[0, First[
                ReplaceAll[WindowSize, 
                 Options[
                  EvaluationNotebook[], WindowSize]]] - 745]], 0}, 
          BaselinePosition -> Baseline], "CacheGraphics" -> False], 
        Spacer[
         Dynamic[
          Max[0, First[
             ReplaceAll[WindowSize, 
              Options[
               EvaluationNotebook[], WindowSize]]] - 745]]]], 
       PaneBox[
        StyleBox[
         StyleBox[
         "\"Lay, Lay, McDonald\"", "SR", Bold, 11, StripOnInput -> False], 
         Bold, StripOnInput -> False], Alignment -> {Right, Center}, 
        BaselinePosition -> Center, ImageSize -> {180, 30}], 
       InterpretationBox[
        StyleBox[
         GraphicsBox[{}, ImageSize -> {6, 0}, BaselinePosition -> Baseline], 
         "CacheGraphics" -> False], 
        Spacer[6]], 
       ActionMenuBox[
        StyleBox[
         TemplateBox[{"\"Section \"", "\"4.5\""}, "RowDefault"], StripOnInput -> 
         False], {
        StyleBox[
          "\"4.5 THE DIMENSION OF A VECTOR SPACE\"", {
           "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
           False] :> {
           NotebookLocate["4.5 THE DIMENSION OF A VECTOR SPACE"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, 
         StyleBox[
          "\"Introduction\"", {"MSG", FontWeight -> "Bold", FontSize -> 13}, 
           StripOnInput -> False] :> {
           NotebookLocate["Introduction"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], "\"THEOREM 9 Linearly Dependent Vectors\""}, 
            "RowDefault"], {"MSG", FontWeight -> "Bold", FontSize -> 12}, 
           StripOnInput -> False] :> {
           NotebookLocate["THEOREM 9 Linearly Dependent Vectors"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], "\"THEOREM 10 Number of Vectors in a Basis\""}, 
            "RowDefault"], {"MSG", FontWeight -> "Bold", FontSize -> 12}, 
           StripOnInput -> False] :> {
           NotebookLocate["THEOREM 10 Number of Vectors in a Basis"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], "\"DEFINITION Dimension\""}, "RowDefault"], {
           "MSG", FontWeight -> "Bold", FontSize -> 12}, StripOnInput -> 
           False] :> {
           NotebookLocate["DEFINITION Dimension"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], "\"EXAMPLE 1\""}, "RowDefault"], {
           "MSG", FontWeight -> "Plain", FontSize -> 12}, StripOnInput -> 
           False] :> {
           NotebookLocate["EXAMPLE 1"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], "\"EXAMPLE 2\""}, "RowDefault"], {
           "MSG", FontWeight -> "Plain", FontSize -> 12}, StripOnInput -> 
           False] :> {
           NotebookLocate["EXAMPLE 2"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], 
             "\"FIGURE A \[FilledDiamond]:  A Two Dimensional Subspace\""}, 
            "RowDefault"], {"MSG", FontWeight -> "Plain", FontSize -> 12}, 
           StripOnInput -> False] :> {
           NotebookLocate[
           "FIGURE A \[FilledDiamond]:  A Two Dimensional Subspace"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], "\"EXAMPLE 3\""}, "RowDefault"], {
           "MSG", FontWeight -> "Plain", FontSize -> 12}, StripOnInput -> 
           False] :> {
           NotebookLocate["EXAMPLE 3"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], "\"EXAMPLE 4\""}, "RowDefault"], {
           "MSG", FontWeight -> "Plain", FontSize -> 12}, StripOnInput -> 
           False] :> {
           NotebookLocate["EXAMPLE 4"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], 
             "\"FIGURE 1\[FilledDiamond]:  Dimensions of Subspaces\""}, 
            "RowDefault"], {"MSG", FontWeight -> "Plain", FontSize -> 12}, 
           StripOnInput -> False] :> {
           NotebookLocate[
           "FIGURE 1\[FilledDiamond]:  Dimensions of Subspaces"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, 
         StyleBox[
          "\"Subspaces of a Finite-Dimensional Space\"", {
           "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
           False] :> {
           NotebookLocate["Subspaces of a Finite-Dimensional Space"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], "\"THEOREM 11 Dimension of Subspaces\""}, 
            "RowDefault"], {"MSG", FontWeight -> "Bold", FontSize -> 12}, 
           StripOnInput -> False] :> {
           NotebookLocate["THEOREM 11 Dimension of Subspaces"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], "\"THEOREM 12 The Basis Theorem\""}, 
            "RowDefault"], {"MSG", FontWeight -> "Bold", FontSize -> 12}, 
           StripOnInput -> False] :> {
           NotebookLocate["THEOREM 12 The Basis Theorem"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, 
         StyleBox[
          "\"The Dimensions of Nul A and Col A\"", {
           "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
           False] :> {
           NotebookLocate["The Dimensions of Nul A and Col A"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, StyleBox[
           TemplateBox[{
             InterpretationBox[
              StyleBox[
               
               GraphicsBox[{}, ImageSize -> {16, 0}, BaselinePosition -> 
                Baseline], "CacheGraphics" -> False], 
              Spacer[16]], "\"EXAMPLE 5\""}, "RowDefault"], {
           "MSG", FontWeight -> "Plain", FontSize -> 12}, StripOnInput -> 
           False] :> {
           NotebookLocate["EXAMPLE 5"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}, 
         StyleBox[
          "\"PRACTICE PROBLEMS\"", {
           "MSG", FontWeight -> "Bold", FontSize -> 13}, StripOnInput -> 
           False] :> {
           NotebookLocate["PRACTICE PROBLEMS"], 
           FrontEndExecute[{
             FrontEndToken["SelectionOpenAllGroups"]}]}}, 
        ImageSize -> {108, 22}, FrameMargins -> 0, BaseStyle -> {"MSG", 11}, 
        BaselinePosition -> Center], 
       InterpretationBox[
        StyleBox[
         GraphicsBox[{}, ImageSize -> {3, 0}, BaselinePosition -> Baseline], 
         "CacheGraphics" -> False], 
        Spacer[3]], 
       TagBox[
        TooltipBox[
         ButtonBox[
          PaneSelectorBox[{False -> GraphicsBox[{
               AbsoluteThickness[1], 
               GrayLevel[0.5], 
               PolygonBox[{{0.01, 0.85}, {0.25, 0.85}, {0.105, 0.6}}], 
               LineBox[{{0.3, 0.8}, {0.9, 0.8}}], 
               GrayLevel[0.65], 
               
               PolygonBox[{{0.3, 0.72}, {0.9, 0.72}, {0.9, 0.57}, {0.3, 
                0.57}, {0.3, 0.72}}], 
               GrayLevel[0.5], 
               PolygonBox[{{0.01, 0.45}, {0.25, 0.45}, {0.125, 0.2}}], 
               LineBox[{{0.3, 0.4}, {0.9, 0.4}}], 
               GrayLevel[0.65], 
               
               PolygonBox[{{0.3, 0.32}, {0.9, 0.32}, {0.9, 0.17}, {0.3, 
                0.17}, {0.3, 0.32}}]}, ImageSize -> 18, AspectRatio -> 1, 
              PlotRange -> {{0, 1}, {0, 1}}], True -> GraphicsBox[{
               AbsoluteThickness[1], 
               RGBColor[0.8, 0, 0.4], 
               PolygonBox[{{0.01, 0.85}, {0.25, 0.85}, {0.105, 0.6}}], 
               LineBox[{{0.3, 0.8}, {0.9, 0.8}}], 
               RGBColor[0.8666666666666667, 
                NCache[
                 Rational[1, 3], 0.3333333333333333], 0.6], 
               
               PolygonBox[{{0.3, 0.72}, {0.9, 0.72}, {0.9, 0.57}, {0.3, 
                0.57}, {0.3, 0.72}}], 
               RGBColor[0.8, 0, 0.4], 
               PolygonBox[{{0.01, 0.45}, {0.25, 0.45}, {0.125, 0.2}}], 
               LineBox[{{0.3, 0.4}, {0.9, 0.4}}], 
               RGBColor[0.8666666666666667, 
                NCache[
                 Rational[1, 3], 0.3333333333333333], 0.6], 
               
               PolygonBox[{{0.3, 0.32}, {0.9, 0.32}, {0.9, 0.17}, {0.3, 
                0.17}, {0.3, 0.32}}]}, ImageSize -> 18, AspectRatio -> 1, 
              PlotRange -> {{0, 1}, {0, 1}}]}, 
           Dynamic[
            CurrentValue["MouseOver"]], ImageSize -> Automatic, FrameMargins -> 
           0], BaseStyle -> "Paste", ButtonFunction :> {
            SelectionMove[
             ButtonNotebook[], All, Notebook], 
            FrontEndExecute[
             FrontEndToken[
              ButtonNotebook[], "SelectionOpenAllGroups"]], 
            NotebookFind[
             ButtonNotebook[], "QuickCheckAnswerIcon", All, CellStyle, 
             AutoScroll -> False], 
            FrontEndExecute[
             FrontEndToken[
              ButtonNotebook[], "SelectionCloseAllGroups"]], 
            NotebookFind[
             ButtonNotebook[], "\[EmptySmallCircle] Answers to Odd Exercises",
              All, CellTags, AutoScroll -> False], 
            FrontEndExecute[
             FrontEndToken[
              ButtonNotebook[], "SelectionCloseAllGroups"]], 
            SelectionMove[
             ButtonNotebook[], Before, Notebook]}, ImageSize -> {24, 22}, 
          ImageMargins -> 0, FrameMargins -> 0, Alignment -> Center, 
          BaselinePosition -> Center], "\"Expanded View\"", TooltipDelay -> 
         0.5, LabelStyle -> "TextStyling"], 
        Annotation[#, "Expanded View", "Tooltip"]& ], 
       InterpretationBox[
        StyleBox[
         GraphicsBox[{}, ImageSize -> {1, 0}, BaselinePosition -> Baseline], 
         "CacheGraphics" -> False], 
        Spacer[1]], 
       TagBox[
        TooltipBox[
         ButtonBox[
          PaneSelectorBox[{False -> GraphicsBox[{
               AbsoluteThickness[1], 
               GrayLevel[0.5], 
               PolygonBox[{{0.01, 0.65}, {0.2, 0.8}, {0.01, 0.95}}], 
               LineBox[{{0.3, 0.8}, {0.9, 0.8}}], 
               PolygonBox[{{0.01, 0.25}, {0.2, 0.4}, {0.01, 0.55}}], 
               LineBox[{{0.3, 0.4}, {0.9, 0.4}}]}, ImageSize -> 18, 
              AspectRatio -> 1, PlotRange -> {{0, 1}, {0, 1}}], True -> 
            GraphicsBox[{
               AbsoluteThickness[1], 
               RGBColor[0.8, 0, 0.4], 
               PolygonBox[{{0.01, 0.65}, {0.2, 0.8}, {0.01, 0.95}}], 
               LineBox[{{0.3, 0.8}, {0.9, 0.8}}], 
               PolygonBox[{{0.01, 0.25}, {0.2, 0.4}, {0.01, 0.55}}], 
               LineBox[{{0.3, 0.4}, {0.9, 0.4}}]}, ImageSize -> 18, 
              AspectRatio -> 1, PlotRange -> {{0, 1}, {0, 1}}]}, 
           Dynamic[
            CurrentValue["MouseOver"]], ImageSize -> Automatic, FrameMargins -> 
           0], BaseStyle -> "Paste", ButtonFunction :> {
            SelectionMove[
             ButtonNotebook[], All, Notebook], 
            FrontEndExecute[
             FrontEndToken[
              ButtonNotebook[], "SelectionOpenAllGroups"]], 
            NotebookFind[
             ButtonNotebook[], "\[EmptySmallCircle] Answers to Odd Exercises",
              All, CellTags, AutoScroll -> False], 
            FrontEndExecute[
             FrontEndToken[
              ButtonNotebook[], "SelectionCloseAllGroups"]], 
            NotebookFind[
             ButtonNotebook[], "QuickCheckAnswerIcon", All, CellStyle, 
             AutoScroll -> False], 
            FrontEndExecute[
             FrontEndToken[
              ButtonNotebook[], "SelectionCloseAllGroups"]], 
            NotebookFind[
             ButtonNotebook[], "CalloutIcon", All, CellStyle, AutoScroll -> 
             False], 
            FrontEndExecute[
             FrontEndToken[
              ButtonNotebook[], "SelectionCloseAllGroups"]], 
            NotebookFind[
             ButtonNotebook[], "Subsubsubsubsection", All, CellStyle, 
             AutoScroll -> False], 
            FrontEndExecute[
             FrontEndToken[
              ButtonNotebook[], "SelectionCloseAllGroups"]], 
            NotebookFind[
             ButtonNotebook[], "Subsection", All, CellStyle, AutoScroll -> 
             False], 
            FrontEndExecute[
             FrontEndToken[
              ButtonNotebook[], "OpenCloseGroup"]], 
            SelectionMove[
             ButtonNotebook[], Before, Notebook]}, ImageSize -> {24, 22}, 
          ImageMargins -> 0, FrameMargins -> 0, Alignment -> Center, 
          BaselinePosition -> Center], "\"Outline View\"", TooltipDelay -> 
         0.5, LabelStyle -> "TextStyling"], 
        Annotation[#, "Outline View", "Tooltip"]& ], 
       InterpretationBox[
        StyleBox[
         GraphicsBox[{}, ImageSize -> {3, 0}, BaselinePosition -> Baseline], 
         "CacheGraphics" -> False], 
        Spacer[3]], 
       ActionMenuBox[
        StyleBox["\"%\"", "Label", 13, StripOnInput -> False], {
        "\"50%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 0.5]}, "\"75%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 0.75]}, "\"100%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 1]}, "\"125%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 1.25]}, "\"150%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 1.5]}, "\"175%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 1.75]}, "\"200%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 2]}, "\"225%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 2.25]}, "\"250%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 2.5]}, "\"275%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 2.75]}, "\"300%\"" :> {
           SetOptions[
            ButtonNotebook[], Magnification -> 3]}}, 
        FrameMargins -> {{0, 1}, {0, 0}}, ImageMargins -> 0, 
        ImageSize -> {40, 22}, BaselinePosition -> Center]}}, 
     GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Center}}}, 
     AutoDelete -> False, 
     GridBoxItemSize -> {"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
      GridBoxSpacings -> {"Columns" -> {{0}}}], "Grid"]], "DockedCell", 
  CellFrameMargins -> 3],
PageHeaders->{{
   Cell[
    TextData[
     RowBox[{
       CounterBox["Page"], "            ", 
       StyleBox["Chapter 4  \[Bullet]  Vector Spaces"]}]], "Header"], "", 
   ""}, {"", "", 
   Cell[
    TextData[
     RowBox[{
       StyleBox["Section 4.5  The Dimension of a Vector Space"], 
       "            ", 
       CounterBox["Page"]}]], "Header"]}},
PageFooters->{{"", 
   Cell[
    TextData["Copyright \[Copyright] 2015 Pearson Education, Inc."], 
    "Footer"], ""}, {"", 
   Cell[
    TextData["Copyright \[Copyright] 2015 Pearson Education, Inc."], 
    "Footer"], ""}},
PrintingOptions->{"FacingPages"->True,
"FirstPageHeader"->True,
"InnerOuterMargins"->{90, 48},
"PrintingMargins"->{{48, 48}, {72, 72}}},
ShowCellBracket->False,
Copyable->False,
ShowCellLabel->False,
ShowCellTags->False,
Magnification->1,
GridBoxOptions->{AllowScriptLevelChange->False},
FrontEndVersion->"10.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (September 9, \
2014)",
StyleDefinitions->Notebook[{
   Cell[
    StyleData[StyleDefinitions -> "Default.nb"]], 
   Cell[
    StyleData["Notebook"], 
    CommonDefaultFormatTypes -> {"Output" -> TraditionalForm}], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Section"], CellFrame -> {{1, 0}, {1, 0}}, ShowGroupOpener -> 
       False, CellMargins -> {{10, 0}, {3, 10}}, CellFrameColor -> 
       RGBColor[0.74, 0.83, 0.86], FontFamily -> "Helvetica", FontSize -> 20, 
       FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> GrayLevel[0]], 
      Cell[
       StyleData["Section", "Printout"], CellFrame -> None, ShowGroupOpener -> 
       False, CellMargins -> {{0, Inherited}, {3, 10}}, CellFrameColor -> 
       GrayLevel[0.5], FontFamily -> "Helvetica", FontSize -> 18, FontWeight -> 
       "Bold", FontSlant -> "Plain", FontTracking -> "Wide"]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subsection"], CellFrame -> {{0.5, 0}, {0, 0.5}}, 
       CellDingbat -> None, ShowGroupOpener -> True, 
       CellMargins -> {{15, 0}, {2, 5}}, CellFrameColor -> GrayLevel[0.85], 
       FontFamily -> "Helvetica", FontSize -> 18, FontWeight -> "Bold", 
       FontSlant -> "Plain", FontColor -> GrayLevel[0]], 
      Cell[
       StyleData["Subsection", "Printout"], CellFrame -> None, CellDingbat -> 
       None, ShowGroupOpener -> True, CellMargins -> {{0, 0}, {2, 10}}, 
       CellFrameColor -> GrayLevel[0.85], FontFamily -> "Helvetica", FontSize -> 
       16, FontWeight -> "Bold", FontSlant -> "Plain"]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subsubsection"], CellDingbat -> None, ShowGroupOpener -> 
       True, CellMargins -> {{30, Inherited}, {2, 10}}, FontFamily -> 
       "Helvetica", FontSize -> 14, FontWeight -> "Bold", FontColor -> 
       GrayLevel[0]], 
      Cell[
       StyleData["Subsubsection", "Printout"], CellDingbat -> None, 
       CellMargins -> {{0, Inherited}, {2, 10}}, FontFamily -> "Helvetica", 
       FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subsubsubsection"], CellDingbat -> None, ShowGroupOpener -> 
       True, CellMargins -> {{30, Inherited}, {2, 10}}, FontFamily -> 
       "Helvetica", FontSize -> 14, FontWeight -> "Bold", FontSlant -> 
       "Plain", FontColor -> GrayLevel[0]], 
      Cell[
       StyleData["Subsubsubsection", "Printout"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{0, Inherited}, {2, 10}}, 
       FontFamily -> "Helvetica", FontSize -> 13, FontSlant -> "Plain"]}, 
     Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subsubsubsubsection"], CellDingbat -> None, ShowGroupOpener -> 
       True, CellMargins -> {{30, Inherited}, {2, 10}}, FontFamily -> 
       "Helvetica", FontSize -> 14, FontWeight -> "Bold", FontColor -> 
       GrayLevel[0]], 
      Cell[
       StyleData["Subsubsubsubsection", "Printout"], CellDingbat -> None, 
       ShowGroupOpener -> True, CellMargins -> {{0, Inherited}, {2, 10}}, 
       FontFamily -> "Helvetica", FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["FirstCell"], ShowCellBracket -> False, 
       CellMargins -> {{30, 10}, {7, 7}}, CellOpen -> False, TabSpacings -> 3,
        FontSize -> 14], 
      Cell[
       StyleData["FirstCell", "Printout"], CellMargins -> {{30, 10}, {7, 7}}, 
       CellOpen -> False, FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Text"], CellMargins -> {{30, 10}, {7, 7}}, TabSpacings -> 3,
        FontFamily -> "Times", FontSize -> 14], 
      Cell[
       StyleData["Text", "Printout"], CellMargins -> {{0, 0}, {7, 7}}, 
       TabSpacings -> 3, FontFamily -> "Times", FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Item"], CellDingbat -> 
       Cell["\[FilledSmallCircle]", FontWeight -> "Bold"], 
       CellMargins -> {{50, 10}, {4, 4}}, 
       CellGroupingRules -> {"GroupTogetherNestedGrouping", 15000}, 
       CellFrameLabelMargins -> 4, DefaultNewCellStyle -> "Item", TabSpacings -> 
       3, CounterIncrements -> "Item", 
       CounterAssignments -> {{"Subitem", 0}, {"Subsubitem", 0}}, FontFamily -> 
       "Times", FontSize -> 14], 
      Cell[
       StyleData["Item", "Printout"], CellDingbat -> 
       Cell["\[FilledSmallCircle]", FontWeight -> "Bold"], 
       CellMargins -> {{20, 0}, {2, 2}}, CellFrameLabelMargins -> 4, 
       TabSpacings -> 3, FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subitem"], CellDingbat -> 
       Cell["\[FilledSmallCircle]", FontWeight -> "Bold"], 
       CellMargins -> {{70, 12}, {4, 4}}, 
       CellGroupingRules -> {"GroupTogetherNestedGrouping", 15100}, 
       CellFrameLabelMargins -> 4, DefaultNewCellStyle -> "Item", TabSpacings -> 
       3, CounterIncrements -> "Subitem", 
       CounterAssignments -> {{"Subsubitem", 0}}, FontFamily -> "Times", 
       FontSize -> 14, FontWeight -> "Plain", FontSlant -> "Plain"], 
      Cell[
       StyleData["Subitem", "Printout"], CellDingbat -> 
       Cell["\[FilledSmallCircle]", FontWeight -> "Bold"], 
       CellMargins -> {{40, 2}, {1, 1}}, CellFrameLabelMargins -> 4, 
       TabSpacings -> 3, FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Subsubitem"], CellDingbat -> 
       Cell["\[FilledSmallCircle]", FontWeight -> "Bold"], 
       CellMargins -> {{90, 12}, {4, 4}}, 
       CellGroupingRules -> {"GroupTogetherNestedGrouping", 15200}, 
       CellFrameLabelMargins -> 4, DefaultNewCellStyle -> "Subsubitem", 
       TabSpacings -> 3, CounterIncrements -> "Subsubitem", FontFamily -> 
       "Times", FontSize -> 14, FontWeight -> "Plain", FontSlant -> "Plain"], 
      
      Cell[
       StyleData["Subsubitem", "Printout"], CellDingbat -> 
       Cell["\[FilledSmallCircle]", FontWeight -> "Bold"], 
       CellMargins -> {{60, 2}, {1, 1}}, CellFrameLabelMargins -> 4, 
       TabSpacings -> 3, FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ChapterNumberFont"], FontFamily -> "Arial", FontSize -> 48, 
       FontColor -> RGBColor[0.3, 0.5, 0.3]], 
      Cell[
       StyleData["ChapterNumberFont", "Printout"], FontFamily -> "Arial", 
       FontSize -> 48, FontColor -> GrayLevel[0]]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ChapterTitleFont"], FontFamily -> "Times", FontSize -> 36, 
       FontWeight -> "Bold", FontTracking -> "Extended", FontColor -> 
       RGBColor[0, 0.5, 0.6]], 
      Cell[
       StyleData["ChapterTitleFont", "Printout"], FontFamily -> "Times", 
       FontSize -> 36, FontColor -> GrayLevel[0]]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["DefinitionFont"], FontFamily -> "Arial", FontSize -> 14, 
       FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       RGBColor[0.5, 0.72, 0.4]], 
      Cell[
       StyleData["DefinitionFont", "Printout"], FontFamily -> "Arial", 
       FontSize -> 13, FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Definition"], CellMargins -> {{30, 30}, {7, 7}}, 
       PageBreakWithin -> False, LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 14, Background -> RGBColor[0.87, 0.95, 0.87]], 
      Cell[
       StyleData["Definition", "Printout"], CellMargins -> {{30, 30}, {7, 7}},
        PageBreakWithin -> False, LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["TheoremFont"], FontFamily -> "Arial", FontSize -> 14, 
       FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       RGBColor[0.18, 0.51, 0.67]], 
      Cell[
       StyleData["TheoremFont", "Printout"], FontFamily -> "Arial", FontSize -> 
       13, FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Theorem"], CellMargins -> {{30, 30}, {7, 7}}, 
       PageBreakWithin -> False, LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 14, Background -> RGBColor[0.86, 0.9, 0.94]], 
      Cell[
       StyleData["Theorem", "Printout"], CellMargins -> {{30, 30}, {7, 7}}, 
       PageBreakWithin -> False, LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["NumericalNoteFont"], FontFamily -> "Arial", FontSize -> 14, 
       FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       RGBColor[0.95, 0.7, 0.5]], 
      Cell[
       StyleData["NumericalNoteFont", "Printout"], FontFamily -> "Arial", 
       FontSize -> 13, FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["NumericalNote"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, PageBreakWithin -> False, 
       CellFrameColor -> RGBColor[0.95, 0.7, 0.6], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 14], 
      Cell[
       StyleData["NumericalNote", "Printout"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, PageBreakWithin -> False, 
       CellFrameColor -> GrayLevel[0.5], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ProofFont"], FontFamily -> "Helvetica", FontSize -> 14, 
       FontWeight -> "Bold", FontColor -> RGBColor[0.18, 0.51, 0.67]], 
      Cell[
       StyleData["ProofFont", "Printout"], FontFamily -> "Helvetica", 
       FontSize -> 13, FontWeight -> "Bold", FontColor -> GrayLevel[0]]}, 
     Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ProofEndFont"], FontFamily -> "Helvetica", FontSize -> 18, 
       FontColor -> RGBColor[0.18, 0.51, 0.67]], 
      Cell[
       StyleData["ProofEndFont", "Printout"], FontFamily -> "Helvetica", 
       FontSize -> 18, FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ProofEnd"], TextAlignment -> Right, FontColor -> 
       RGBColor[0.18, 0.51, 0.67]], 
      Cell[
       StyleData["ProofEnd", "Printout"], TextAlignment -> Right, FontColor -> 
       GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["SummaryFont"], FontFamily -> "Arial", FontSize -> 14, 
       FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       RGBColor[0, 0.64, 0.85]], 
      Cell[
       StyleData["SummaryFont", "Printout"], FontFamily -> "Arial", FontSize -> 
       13, FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Summary"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, PageBreakWithin -> False, 
       CellFrameColor -> RGBColor[0, 0.64, 0.85], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 14], 
      Cell[
       StyleData["Summary", "Printout"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, PageBreakWithin -> False, 
       CellFrameColor -> GrayLevel[0.5], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ProcedureFont"], FontFamily -> "Arial", FontSize -> 14, 
       FontWeight -> "Bold", FontSlant -> "Plain", FontTracking -> 
       "Condensed", FontColor -> RGBColor[0, 0.64, 0.85]], 
      Cell[
       StyleData["ProcedureFont", "Printout"], FontFamily -> "Arial", 
       FontSize -> 13, FontWeight -> "Bold", FontSlant -> "Plain", 
       FontTracking -> "Condensed", FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Procedure"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, CellFrameColor -> 
       RGBColor[0, 0.64, 0.85], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 14], 
      Cell[
       StyleData["Procedure", "Printout"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, PageBreakWithin -> False, 
       CellFrameColor -> GrayLevel[0.5], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["BlueFramedFont"], FontFamily -> "Arial", FontSize -> 14, 
       FontWeight -> "Bold", FontSlant -> "Plain", FontTracking -> 
       "Condensed", FontColor -> RGBColor[0, 0.64, 0.85]], 
      Cell[
       StyleData["BlueFramedFont", "Printout"], FontFamily -> "Arial", 
       FontSize -> 13, FontWeight -> "Bold", FontSlant -> "Plain", 
       FontTracking -> "Condensed", FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["BlueFramedCell"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, CellFrameColor -> 
       RGBColor[0, 0.64, 0.85], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 14], 
      Cell[
       StyleData["BlueFramedCell", "Printout"], CellFrame -> 1, 
       CellMargins -> {{30, 30}, {7, 7}}, PageBreakWithin -> False, 
       CellFrameColor -> GrayLevel[0.5], LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["BeigeBackgroundCell"], CellMargins -> {{30, 30}, {7, 7}}, 
       PageBreakWithin -> False, LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 14, Background -> RGBColor[0.97, 0.94, 0.87]], 
      Cell[
       StyleData["BeigeBackgroundCell", "Printout"], 
       CellMargins -> {{30, 30}, {7, 7}}, PageBreakWithin -> False, 
       LineSpacing -> {1, 3}, ParagraphSpacing -> {0, 6}, TabSpacings -> 3, 
       FontFamily -> "Times", FontSize -> 13, Background -> 
       RGBColor[0.97, 0.94, 0.87]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["BlueBackgroundFont"], FontFamily -> "Arial", FontSize -> 14,
        FontWeight -> "Bold", FontSlant -> "Plain", FontColor -> 
       RGBColor[0, 0.68, 0.94]], 
      Cell[
       StyleData["BlueBackgroundFont", "Printout"], FontFamily -> "Arial", 
       FontSize -> 13, FontWeight -> "Bold", FontSlant -> "Plain", 
       FontTracking -> "Condensed", FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["BlueBackgroundCell"], CellMargins -> {{30, 30}, {7, 7}}, 
       PageBreakWithin -> False, LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 6}, TabSpacings -> 3, FontFamily -> "Times", 
       FontSize -> 14, Background -> RGBColor[0.83, 0.94, 0.99]], 
      Cell[
       StyleData["BlueBackgroundCell", "Printout"], 
       CellMargins -> {{30, 30}, {7, 7}}, PageBreakWithin -> False, 
       LineSpacing -> {1, 3}, ParagraphSpacing -> {0, 6}, TabSpacings -> 3, 
       FontFamily -> "Times", FontSize -> 13, Background -> GrayLevel[0.9]]}, 
     Closed]], 
   Cell[
    StyleData["CalloutIcon"], CellMargins -> {{30, 108}, {0, 0}}, 
    CellGroupingRules -> {"GroupTogetherGrouping", 100000}, CellFrameColor -> 
    RGBColor[0.976, 0.855, 0.514], TextAlignment -> Left, 
    LineSpacing -> {1, 2}, FontSize -> 13], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["CalloutIconFont"], FontFamily -> "Helvetica", FontSize -> 
       13, FontTracking -> "Wide", FontColor -> 
       RGBColor[0.0859375, 0.496094, 0.332031]], 
      Cell[
       StyleData["CalloutIconFont", "Printout"], FontFamily -> "Helvetica", 
       FontSize -> 12, FontColor -> RGBColor[0.0859375, 0.496094, 0.332031]]},
      Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Callout"], CellFrame -> 0, 
       CellMargins -> {{30, 108}, {2, 0}}, 
       CellGroupingRules -> {"GroupTogetherGrouping", 100000}, CellFrameColor -> 
       RGBColor[0.0859375, 0.496094, 0.332031], LineSpacing -> {1, 2}, 
       ParagraphSpacing -> {0, 6}, FontFamily -> "Times", FontSize -> 13, 
       Background -> GrayLevel[0.97]], 
      Cell[
       StyleData["Callout", "Printout"], CellFrame -> {{1, 0}, {0, 0}}, 
       CellMargins -> {{30, 180}, {2, 0}}, PageBreakWithin -> False, 
       CellFrameColor -> RGBColor[0.0859375, 0.496094, 0.332031], 
       LineSpacing -> {1, 2}, ParagraphSpacing -> {0, 6}, FontSize -> 12]}, 
     Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["TableFont"], FontFamily -> "Arial", FontSize -> 13, 
       FontWeight -> "Bold", FontColor -> RGBColor[0., 0.7, 0.7]], 
      Cell[
       StyleData["TableFont", "Printout"], FontFamily -> "Arial", FontSize -> 
       13, FontWeight -> "Bold", FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["TableCell"], CellMargins -> {{30, 10}, {5, 5}}], 
      Cell[
       StyleData["TableCell", "Printout"], CellMargins -> {{0, 0}, {5, 5}}]}, 
     Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Note"], FontFamily -> "Helvetica", FontSize -> 12, 
       FontTracking -> "Wide", FontColor -> RGBColor[0.6, 0.4, 0.4]], 
      Cell[
       StyleData["Note", "Printout"], FontFamily -> "Helvetica", FontSize -> 
       12, FontTracking -> "Wide", FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["IntroductoryExampleTitleFont"], 
       CellChangeTimes -> {3.627910934592476*^9}, FontFamily -> "Times", 
       FontWeight -> "Bold", FontTracking -> "Extended", FontColor -> 
       RGBColor[0.5, 0.75, 0.5]], 
      Cell[
       StyleData["IntroductoryExampleTitleFont", "Printout"], FontFamily -> 
       "Times", FontWeight -> "Bold", FontTracking -> "Extended", FontColor -> 
       GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["SectionTitleFont"], FontFamily -> "Helvetica", FontWeight -> 
       "Bold", FontTracking -> "Extended", FontColor -> 
       RGBColor[0, 0.5, 0.6]], 
      Cell[
       StyleData["SectionTitleFont", "Printout"], FontFamily -> "Helvetica", 
       FontWeight -> "Bold", FontTracking -> "Extended", FontColor -> 
       GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["SectionTitleNumberFont"], FontFamily -> "Helvetica", 
       FontWeight -> "Bold", FontTracking -> "Extended", FontColor -> 
       RGBColor[0.95, 0.7, 0.5]], 
      Cell[
       StyleData["SectionTitleNumberFont", "Printout"], FontFamily -> 
       "Helvetica", FontWeight -> "Bold", FontTracking -> "Extended", 
       FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["TypesetAnnotationFont"], FontFamily -> "Times", FontColor -> 
       RGBColor[0, 0.5, 1]], 
      Cell[
       StyleData["TypesetAnnotationFont", "Printout"], FontFamily -> "Times", 
       FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["FontColorB"], FontColor -> RGBColor[0, 0, 0.75]], 
      Cell[
       StyleData["FontColorB", "Printout"], FontColor -> GrayLevel[0]]}, 
     Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["FontColorG"], FontColor -> RGBColor[0, 0.7, 0.7]], 
      Cell[
       StyleData["FontColorG", "Printout"], FontColor -> GrayLevel[0]]}, 
     Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["FontColorC"], FontColor -> RGBColor[0.7, 0., 0.3]], 
      Cell[
       StyleData["FontColorC", "Printout"], FontColor -> GrayLevel[0]]}, 
     Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["FontColorLB"], FontColor -> RGBColor[0, 0, 1]], 
      Cell[
       StyleData["FontColorLB", "Printout"], FontColor -> GrayLevel[0]]}, 
     Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ExampleFont"], FontFamily -> "Helvetica", FontColor -> 
       RGBColor[0.65, 0.18, 0.2]], 
      Cell[
       StyleData["ExampleFont", "Printout"], FontFamily -> "Helvetica", 
       FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["SolutionFont"], FontFamily -> "Helvetica", FontColor -> 
       RGBColor[0.65, 0.18, 0.2]], 
      Cell[
       StyleData["SolutionFont", "Printout"], FontFamily -> "Helvetica", 
       FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["SolutionEndFont"], FontFamily -> "Helvetica", FontSize -> 
       18, FontColor -> RGBColor[0.65, 0.18, 0.2]], 
      Cell[
       StyleData["SolutionEndFont", "Printout"], FontFamily -> "Helvetica", 
       FontSize -> 18, FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["RightJustifiedTextCell"], TextAlignment -> Right], 
      Cell[
       StyleData["SolutionEnd", "Printout"], TextAlignment -> Right, 
       FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["PracticeProblemFont"], FontFamily -> "Helvetica", FontColor -> 
       RGBColor[0, 0.5, 0.6]], 
      Cell[
       StyleData["PracticeProblemFont", "Printout"], FontFamily -> 
       "Helvetica", FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["PracticeProblemEndFont"], FontFamily -> "Helvetica", 
       FontSize -> 18, FontColor -> RGBColor[0, 0.5, 0.6]], 
      Cell[
       StyleData["PracticeProblemEndFont", "Printout"], FontFamily -> 
       "Helvetica", FontSize -> 18, FontColor -> GrayLevel[0]]}, Open]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ExerciseFont"], FontFamily -> "Helvetica", FontColor -> 
       RGBColor[0, 0.5, 0.6]], 
      Cell[
       StyleData["ExerciseFont", "Printout"], FontFamily -> "Helvetica", 
       FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["ControlFont"], FontFamily -> "Helvetica", FontSize -> 12, 
       FontTracking -> "Wide", FontColor -> GrayLevel[0.4]], 
      Cell[
       StyleData["ControlFont", "Printout"], FontFamily -> "Helvetica", 
       FontSize -> 12, FontTracking -> "Wide", FontColor -> GrayLevel[0]]}, 
     Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["FigureFont"], FontFamily -> "Arial", FontSize -> 13, 
       FontWeight -> "Bold", FontColor -> RGBColor[0., 0.7, 0.7]], 
      Cell[
       StyleData["FigureFont", "Printout"], FontFamily -> "Arial", FontSize -> 
       13, FontWeight -> "Bold", FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["FigureFontText"], FontFamily -> "Times", FontColor -> 
       RGBColor[0., 0.7, 0.7]], 
      Cell[
       StyleData["FigureFontText", "Printout"], FontFamily -> "Times", 
       FontColor -> GrayLevel[0]]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Problem"], CellMargins -> {{30, 10}, {7, 7}}, 
       PageBreakWithin -> False, LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 3}, ParagraphIndent -> -29, TabSpacings -> 2.5,
        FontFamily -> "Times", FontSize -> 14], 
      Cell[
       StyleData["Problem", "Printout"], CellMargins -> {{30, 10}, {7, 7}}, 
       PageBreakWithin -> False, LineSpacing -> {1, 3}, 
       ParagraphSpacing -> {0, 3}, ParagraphIndent -> -19, TabSpacings -> 2.5,
        FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["SubProblem"], CellMargins -> {{58, 10}, {2, 2}}, 
       PageBreakWithin -> False, LineSpacing -> {1, 3}, 
       ParagraphIndent -> -22, TabSpacings -> 2, FontFamily -> "Times", 
       FontSize -> 14], 
      Cell[
       StyleData["SubProblem", "Printout"], CellMargins -> {{58, 10}, {2, 2}},
        PageBreakWithin -> False, LineSpacing -> {1, 3}, 
       ParagraphIndent -> -16, TabSpacings -> 2, FontSize -> 13]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Comment"], CellFrame -> {{3, 0}, {0, 0}}, 
       CellMargins -> {{30, 30}, {-1, -1}}, 
       CellElementSpacings -> {"ClosedCellHeight" -> 0}, CellFrameColor -> 
       RGBColor[0, 0, 1], LineSpacing -> {1, 3}, FontSize -> 14, Background -> 
       RGBColor[0.87, 0.94, 1]], 
      Cell[
       StyleData["Comment", "Printout"], CellFrame -> {{3, 0}, {0, 0}}, 
       CellMargins -> {{30, 30}, {-1, -1}}, 
       CellElementSpacings -> {"ClosedCellHeight" -> 0}, 
       LineSpacing -> {1, 3}, FontSize -> 13, Background -> GrayLevel[0.9]]}, 
     Closed]], 
   Cell[
    StyleData["InlineCell"], ScriptSizeMultipliers -> 0.8, ScriptLevel -> 0, 
    NumberSeparator -> ","], 
   Cell[
    StyleData["Output"], NumberSeparator -> ","], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Hyperlink", StyleDefinitions -> StyleData["Link"]], 
       ContextMenu -> FEPrivate`FrontEndResource["ContextMenus", "Hyperlink"],
        FontColor -> RGBColor[0.269993, 0.308507, 0.6], 
       ButtonBoxOptions -> {ButtonFunction :> (FrontEndExecute[{
            NotebookLocate[#2, "OpenInNewWindow" -> True]}]& ), Evaluator -> 
         None, Method -> "Queued"}], 
      Cell[
       StyleData["Hyperlink", "Condensed"], FontSize -> 11]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Header"], CellMargins -> {{0, 0}, {4, 1}}, StyleMenuListing -> 
       None, FontFamily -> "Helvetica", FontSize -> 8, FontSlant -> "Plain"], 
      
      Cell[
       StyleData["Header", "Printout"], CellMargins -> {{0, 0}, {4, 1}}, 
       StyleMenuListing -> None, FontFamily -> "Helvetica", FontSize -> 8, 
       FontSlant -> "Plain"]}, Closed]], 
   Cell[
    CellGroupData[{
      Cell[
       StyleData["Footer"], CellMargins -> {{0, 0}, {0, 4}}, StyleMenuListing -> 
       None, FontFamily -> "Helvetica", FontSize -> 8, FontSlant -> "Plain"], 
      
      Cell[
       StyleData["Footer", "Printout"], CellMargins -> {{0, 0}, {0, 4}}, 
       StyleMenuListing -> None, FontFamily -> "Helvetica", FontSize -> 8, 
       FontSlant -> "Plain"]}, Closed]]}, Visible -> False, FrontEndVersion -> 
  "10.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (September 9, 2014)", 
  StyleDefinitions -> "PrivateStylesheetFormatting.nb"]
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{
 "4.5 THE DIMENSION OF A VECTOR SPACE"->{
  Cell[12284, 246, 259, 5, 70, "Section",
   CellTags->"4.5 THE DIMENSION OF A VECTOR SPACE"]},
 "Introduction"->{
  Cell[12568, 255, 158, 3, 70, "Subsection",
   CellTags->"Introduction"]},
 "THEOREM 9 Linearly Dependent Vectors"->{
  Cell[14269, 303, 1335, 46, 70, "Theorem",
   CellTags->"THEOREM 9 Linearly Dependent Vectors"]},
 "THEOREM 10 Number of Vectors in a Basis"->{
  Cell[29757, 826, 592, 18, 70, "Theorem",
   CellTags->"THEOREM 10 Number of Vectors in a Basis"]},
 "DEFINITION Dimension"->{
  Cell[33011, 936, 1297, 47, 70, "Definition",
   CellTags->"DEFINITION Dimension"]},
 "EXAMPLE 1"->{
  Cell[34333, 987, 167, 3, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 1"]},
 "EXAMPLE 2"->{
  Cell[36127, 1049, 169, 3, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 2"]},
 "FIGURE A \[FilledDiamond]:  A Two Dimensional Subspace"->{
  Cell[39695, 1172, 7880, 151, 70, "Output",
   CellTags->"FIGURE A \[FilledDiamond]:  A Two Dimensional Subspace"]},
 "EXAMPLE 3"->{
  Cell[47708, 1331, 167, 3, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 3"]},
 "EXAMPLE 4"->{
  Cell[58733, 1683, 167, 3, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 4"]},
 "FIGURE 1\[FilledDiamond]:  Dimensions of Subspaces"->{
  Cell[61797, 1776, 6350, 118, 70, "Output",
   CellTags->"FIGURE 1\[FilledDiamond]:  Dimensions of Subspaces"]},
 "Subspaces of a Finite-Dimensional Space"->{
  Cell[68292, 1903, 212, 3, 70, "Subsection",
   CellTags->"Subspaces of a Finite-Dimensional Space"]},
 "THEOREM 11 Dimension of Subspaces"->{
  Cell[68851, 1916, 1093, 35, 70, "Theorem",
   CellTags->"THEOREM 11 Dimension of Subspaces"]},
 "THEOREM 12 The Basis Theorem"->{
  Cell[75296, 2128, 1065, 35, 70, "Theorem",
   CellTags->"THEOREM 12 The Basis Theorem"]},
 "The Dimensions of Nul A and Col A"->{
  Cell[78550, 2246, 409, 13, 70, "Subsection",
   CellTags->"The Dimensions of Nul A and Col A"]},
 "EXAMPLE 5"->{
  Cell[83004, 2402, 167, 3, 70, "Subsubsubsection",
   CellTags->"EXAMPLE 5"]},
 "PRACTICE PROBLEMS"->{
  Cell[88315, 2570, 215, 4, 70, "Subsection",
   CellTags->"PRACTICE PROBLEMS"]}
 }
*)
(*CellTagsIndex
CellTagsIndex->{
 {"4.5 THE DIMENSION OF A VECTOR SPACE", 143603, 3936},
 {"Introduction", 143718, 3939},
 {"THEOREM 9 Linearly Dependent Vectors", 143837, 3942},
 {"THEOREM 10 Number of Vectors in a Basis", 143982, 3945},
 {"DEFINITION Dimension", 144110, 3948},
 {"EXAMPLE 1", 144212, 3951},
 {"EXAMPLE 2", 144307, 3954},
 {"FIGURE A \[FilledDiamond]:  A Two Dimensional Subspace", 144448, 3957},
 {"EXAMPLE 3", 144582, 3960},
 {"EXAMPLE 4", 144678, 3963},
 {"FIGURE 1\[FilledDiamond]:  Dimensions of Subspaces", 144815, 3966},
 {"Subspaces of a Finite-Dimensional Space", 144975, 3969},
 {"THEOREM 11 Dimension of Subspaces", 145119, 3972},
 {"THEOREM 12 The Basis Theorem", 145251, 3975},
 {"The Dimensions of Nul A and Col A", 145383, 3978},
 {"EXAMPLE 5", 145498, 3981},
 {"PRACTICE PROBLEMS", 145602, 3984}
 }
*)
(*NotebookFileOutline
Notebook[{
Cell[1521, 34, 10738, 208, 70, "FirstCell"],
Cell[CellGroupData[{
Cell[12284, 246, 259, 5, 70, "Section",
 CellTags->"4.5 THE DIMENSION OF A VECTOR SPACE"],
Cell[CellGroupData[{
Cell[12568, 255, 158, 3, 70, "Subsection",
 CellTags->"Introduction"],
Cell[12729, 260, 1106, 29, 70, "Text"],
Cell[13838, 291, 428, 10, 70, "Text"],
Cell[14269, 303, 1335, 46, 70, "Theorem",
 CellTags->"THEOREM 9 Linearly Dependent Vectors"],
Cell[15607, 351, 2338, 80, 70, "Text"],
Cell[17948, 433, 2383, 66, 70, "Text"],
Cell[20334, 501, 240, 3, 70, "Text"],
Cell[20577, 506, 2275, 60, 70, "Text"],
Cell[22855, 568, 3491, 130, 70, "Text"],
Cell[CellGroupData[{
Cell[26371, 702, 636, 22, 70, "CalloutIcon"],
Cell[27010, 726, 1257, 46, 70, "Callout"]
}, Closed]],
Cell[28282, 775, 90, 1, 70, "Text"],
Cell[28375, 778, 1379, 46, 70, "Text"],
Cell[29757, 826, 592, 18, 70, "Theorem",
 CellTags->"THEOREM 10 Number of Vectors in a Basis"],
Cell[30352, 846, 1853, 62, 70, "Text"],
Cell[32208, 910, 90, 1, 70, "Text"],
Cell[32301, 913, 707, 21, 70, "Text"],
Cell[33011, 936, 1297, 47, 70, "Definition",
 CellTags->"DEFINITION Dimension"],
Cell[CellGroupData[{
Cell[34333, 987, 167, 3, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 1"],
Cell[34503, 992, 1491, 49, 70, "Text"],
Cell[35997, 1043, 93, 1, 70, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[36127, 1049, 169, 3, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 2"],
Cell[36299, 1054, 3393, 116, 70, "Text"],
Cell[39695, 1172, 7880, 151, 70, "Output",
 CellTags->"FIGURE A \[FilledDiamond]:  A Two Dimensional Subspace"],
Cell[47578, 1325, 93, 1, 70, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47708, 1331, 167, 3, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 3"],
Cell[47878, 1336, 1590, 39, 70, "Text"],
Cell[CellGroupData[{
Cell[49493, 1379, 104, 1, 70, "Subsubsubsubsection"],
Cell[49600, 1382, 381, 9, 70, "Text"],
Cell[49984, 1393, 5625, 159, 70, "Text"],
Cell[55612, 1554, 2976, 120, 70, "Text"],
Cell[58591, 1676, 93, 1, 70, "Text"]
}, Closed]]
}, Open  ]],
Cell[CellGroupData[{
Cell[58733, 1683, 167, 3, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 4"],
Cell[58903, 1688, 420, 10, 70, "Text"],
Cell[59326, 1700, 450, 13, 70, "Item",
 CellGroupingRules->"NormalGrouping"],
Cell[59779, 1715, 550, 14, 70, "Item",
 CellGroupingRules->"NormalGrouping"],
Cell[60332, 1731, 538, 14, 70, "Item",
 CellGroupingRules->"NormalGrouping"],
Cell[60873, 1747, 921, 27, 70, "Item",
 CellGroupingRules->"NormalGrouping"],
Cell[61797, 1776, 6350, 118, 70, "Output",
 CellTags->"FIGURE 1\[FilledDiamond]:  Dimensions of Subspaces"],
Cell[68150, 1896, 93, 1, 70, "Text"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[68292, 1903, 212, 3, 70, "Subsection",
 CellTags->"Subspaces of a Finite-Dimensional Space"],
Cell[68507, 1908, 341, 6, 70, "Text"],
Cell[68851, 1916, 1093, 35, 70, "Theorem",
 CellTags->"THEOREM 11 Dimension of Subspaces"],
Cell[69947, 1953, 3036, 112, 70, "Text"],
Cell[72986, 2067, 1400, 41, 70, "Text"],
Cell[74389, 2110, 90, 1, 70, "Text"],
Cell[74482, 2113, 811, 13, 70, "Text"],
Cell[75296, 2128, 1065, 35, 70, "Theorem",
 CellTags->"THEOREM 12 The Basis Theorem"],
Cell[76364, 2165, 2056, 73, 70, "Text"],
Cell[78423, 2240, 90, 1, 70, "Text"]
}, Closed]],
Cell[CellGroupData[{
Cell[78550, 2246, 409, 13, 70, "Subsection",
 CellTags->"The Dimensions of Nul A and Col A"],
Cell[78962, 2261, 1003, 29, 70, "Text"],
Cell[79968, 2292, 2260, 78, 70, "Text"],
Cell[82231, 2372, 748, 26, 70, "BeigeBackgroundCell"],
Cell[CellGroupData[{
Cell[83004, 2402, 167, 3, 70, "Subsubsubsection",
 CellTags->"EXAMPLE 5"],
Cell[83174, 2407, 306, 6, 70, "Text"],
Cell[83483, 2415, 1486, 44, 70, "Text"],
Cell[CellGroupData[{
Cell[84994, 2463, 104, 1, 70, "Subsubsubsubsection"],
Cell[85101, 2466, 629, 18, 70, "Text"],
Cell[85733, 2486, 1409, 40, 70, "Text"],
Cell[87145, 2528, 1013, 32, 70, "Text"],
Cell[88161, 2562, 93, 1, 70, "Text"]
}, Closed]]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[88315, 2570, 215, 4, 70, "Subsection",
 CellTags->"PRACTICE PROBLEMS"],
Cell[88533, 2576, 629, 14, 70, "Text"],
Cell[89165, 2592, 845, 25, 70, "Text"],
Cell[90013, 2619, 855, 29, 70, "Text"],
Cell[90871, 2650, 1282, 38, 70, "Text"],
Cell[CellGroupData[{
Cell[92178, 2692, 201, 3, 70, "Subsubsubsubsection"],
Cell[92382, 2697, 785, 21, 70, "Text"],
Cell[93170, 2720, 1043, 31, 70, "Text"],
Cell[94216, 2753, 2530, 90, 70, "Text"]
}, Closed]]
}, Closed]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)
(* NotebookSignature UScZUojvAbwUrjuWBdRnpGVt *)

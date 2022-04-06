<map version="freeplane 1.9.8">
<!--To view this file, download free mind mapping software Freeplane from https://www.freeplane.org -->
<node TEXT="AWS Well&#xa;Architected" FOLDED="false" ID="ID_696401721" CREATED="1610381621824" MODIFIED="1648021822051" LINK="https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" show_icon_for_attributes="true" associatedTemplateLocation="template:/standard-1.6.mm" show_note_icons="true" fit_to_viewport="false"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ID="ID_271890427" ICON_SIZE="12 pt" COLOR="#000000" STYLE="fork">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" DASH="" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_271890427" STARTARROW="DEFAULT" ENDARROW="NONE"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<richcontent CONTENT-TYPE="plain/auto" TYPE="DETAILS"/>
<richcontent TYPE="NOTE" CONTENT-TYPE="plain/auto"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.selection" BACKGROUND_COLOR="#4e85f8" BORDER_COLOR_LIKE_EDGE="false" BORDER_COLOR="#4e85f8"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important" ID="ID_67550811">
<icon BUILTIN="yes"/>
<arrowlink COLOR="#003399" TRANSPARENCY="255" DESTINATION="ID_67550811"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10 pt" SHAPE_VERTICAL_MARGIN="10 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="10" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Overview" FOLDED="true" POSITION="right" ID="ID_85153344" CREATED="1648021374214" MODIFIED="1648022517088">
<edge COLOR="#ff0000"/>
<font BOLD="true"/>
<node TEXT="The AWS Well-Architected Framework helps you understand the pros and cons of decisions you make while building systems on AWS. By using the Framework you will learn architectural best practices for designing and operating reliable, secure, efficient, and cost-effective systems in the cloud." ID="ID_1158352743" CREATED="1648021727163" MODIFIED="1648021754588"/>
</node>
<node TEXT="Definitions" FOLDED="true" POSITION="right" ID="ID_1313844874" CREATED="1648022023209" MODIFIED="1648022519193">
<edge COLOR="#7c007c"/>
<font BOLD="true"/>
<node ID="ID_1018267668" CREATED="1648022047806" MODIFIED="1648022120021"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          A <b>component</b>&nbsp;is the code, configuration, and AWS Resources that together deliver against a requirement.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1874308121" CREATED="1648022047808" MODIFIED="1648022127538"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          The term <b>workload</b>&nbsp;is used to identify a set of components that together deliver business value.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_144502532" CREATED="1648022047811" MODIFIED="1648022139697"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          We think about <b>architecture</b>&nbsp;as being how components work together in a workload.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1241449458" CREATED="1648022047813" MODIFIED="1648022143500"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Milestones</b>&nbsp;mark key changes in your architecture as it evolves throughout the product lifecycle (design, implementation, testing, go live, and in production).
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_981750318" CREATED="1648022047816" MODIFIED="1648022047816"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          Within an organization the <b>technology portfolio</b>&nbsp;is the collection of workloads that are required for the business to operate.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Pillars" POSITION="right" ID="ID_947806642" CREATED="1648021843581" MODIFIED="1648022521578">
<edge COLOR="#00ff00"/>
<font BOLD="true"/>
<node ID="ID_418639252" CREATED="1648021849727" MODIFIED="1648022466210"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The <b>Operational Excellence</b>&nbsp;pillar includes the ability to support development and run workloads effectively, gain insight into their operations, and to continuously improve supporting processes and procedures to deliver business value.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Design Principles" FOLDED="true" ID="ID_626815727" CREATED="1648022576801" MODIFIED="1648022670738">
<font BOLD="true"/>
<node ID="ID_1933808667" CREATED="1648022591158" MODIFIED="1648022621141"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Perform operations as code</b>: In the cloud, you can apply the same engineering discipline that you use for application code to your entire environment.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1787412423" CREATED="1648022591159" MODIFIED="1648022629986"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Make frequent, small, reversible changes</b>: Design workloads to allow components to be updated regularly.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_636389420" CREATED="1648022591164" MODIFIED="1648022642626"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Refine operations procedures frequently</b>: As you use operations procedures, look for opportunities to improve them.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1602165687" CREATED="1648022591168" MODIFIED="1648022652279"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Anticipate failure</b>: Perform “pre-mortem” exercises to identify potential sources of failure so that they can be removed or mitigated.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_767656773" CREATED="1648022591173" MODIFIED="1648022659302"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Learn from all operational failures</b>: Drive improvement through lessons learned from all operational events and failures.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Best Practices" ID="ID_1214354320" CREATED="1648022711569" MODIFIED="1648022725030">
<font BOLD="true"/>
<node TEXT="Organization" FOLDED="true" ID="ID_1619722528" CREATED="1648022728148" MODIFIED="1648022734976">
<font BOLD="true"/>
<node TEXT="Overview" FOLDED="true" ID="ID_1530127816" CREATED="1648640092109" MODIFIED="1648640096707">
<font BOLD="true"/>
<node TEXT="Teams should have shared understanding of entire workload, roles, business goals and priorities." ID="ID_516566217" CREATED="1648639750163" MODIFIED="1648639797370"/>
<node TEXT="Awareness of guidelines and obligations defined by governance, regulatory compliance, industry standards" ID="ID_377378722" CREATED="1648639800181" MODIFIED="1648639853831"/>
<node TEXT="Evaluate threats and risks, their impacts and tradeoffs" ID="ID_141200066" CREATED="1648639883267" MODIFIED="1648639940542"/>
<node TEXT="Empower team members to take actions, escalate" ID="ID_107822624" CREATED="1648639941199" MODIFIED="1648639990024"/>
<node TEXT="Encourage experimentation, skill enhancements" ID="ID_1734573246" CREATED="1648639990512" MODIFIED="1648640017245"/>
</node>
<node TEXT="Questions" ID="ID_1198348691" CREATED="1648640074095" MODIFIED="1648640079664">
<font BOLD="true"/>
<node ID="ID_1004367074" CREATED="1648640110753" MODIFIED="1648640155138"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>OPS 1:</b>&nbsp;How do you determine what your priorities are?
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1103882485" CREATED="1648640140631" MODIFIED="1648640182080"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>OPS 2: </b>How do you structure your organization to support your business outcomes?
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_630663018" CREATED="1648640183061" MODIFIED="1648640218173"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>OPS 3: </b>How does your organizational structure support your business outcomes?
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node ID="ID_1991054288" CREATED="1648640241465" MODIFIED="1648640246804"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Prepare</b>
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_516331564" CREATED="1648640250247" MODIFIED="1648640258250"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Overview</b>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_39450648" CREATED="1648640258712" MODIFIED="1648640263134"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Questions</b>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Security" ID="ID_86947965" CREATED="1648021971264" MODIFIED="1648021973397"/>
<node TEXT="Reliability" ID="ID_1123928900" CREATED="1648021974799" MODIFIED="1648021977694"/>
<node TEXT="Performance Efficiency" ID="ID_1106995308" CREATED="1648021979337" MODIFIED="1648021986824"/>
<node TEXT="Cost Optimization" ID="ID_122256859" CREATED="1648021989388" MODIFIED="1648021993280"/>
<node TEXT="Sustainability" ID="ID_1661317306" CREATED="1648021993616" MODIFIED="1648022002262"/>
</node>
<node TEXT="General Design Principles" FOLDED="true" POSITION="right" ID="ID_652990244" CREATED="1648022198769" MODIFIED="1648022524303">
<edge COLOR="#007c7c"/>
<font BOLD="true"/>
<node ID="ID_1409230998" CREATED="1648022213434" MODIFIED="1648022239715"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Stop guessing your capacity needs</b>: If you make a poor capacity decision when deploying a workload, you might end up sitting on expensive idle resources or dealing with the performance implications of limited capacity.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_170709923" CREATED="1648022213436" MODIFIED="1648022247319"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Test systems at production scale</b>: In the cloud, you can create a production-scale test environment on demand, complete your testing, and then decommission the resources.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1293726553" CREATED="1648022213442" MODIFIED="1648022258714"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Automate to make architectural experimentation easier</b>: Automation allows you to create and replicate your workloads at low cost and avoid the expense of manual effort.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1068720384" CREATED="1648022213448" MODIFIED="1648022287123"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Allow for evolutionary architectures</b>: In the cloud, the capability to automate and test on demand lowers the risk of impact from design changes.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1668856241" CREATED="1648022213454" MODIFIED="1648022310415"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Drive architectures using data</b>: In the cloud, you can collect data on how your architectural choices affect the behavior of your workload and lets you make fact-based decisions on how to improve your workload.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_877042203" CREATED="1648022213460" MODIFIED="1648022318875"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <ul class="itemizedlist" type="disc">
      <li class="listitem">
        <p>
          <b>Improve through game days</b>: Test how your architecture and processes perform by regularly scheduling game days to simulate events in production.
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Well Architected Tool" POSITION="right" ID="ID_1197966699" CREATED="1648021880435" MODIFIED="1648022526016">
<edge COLOR="#ff00ff"/>
<font BOLD="true"/>
</node>
<node TEXT="Well Architected Lab" POSITION="right" ID="ID_1945012706" CREATED="1648021894356" MODIFIED="1648022527582">
<edge COLOR="#7c0000"/>
<font BOLD="true"/>
</node>
<node TEXT="Well Architected Partner Program" POSITION="right" ID="ID_1463018026" CREATED="1648021919627" MODIFIED="1648022528329">
<edge COLOR="#007c00"/>
<font BOLD="true"/>
</node>
</node>
</map>

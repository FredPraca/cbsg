-------------------------------------------------------------------------
--  The Corporate Bullshit Generator (CBSG)
--  See specification for sources, authors, contributors, license.
-------------------------------------------------------------------------
--  NB: this package is done with the functional programming paradigm.
--  http://en.wikipedia.org/wiki/Functional_programming

with Ada.Characters.Handling;           use Ada.Characters.Handling;
with Delirium;                          use Delirium;

package body Corporate_Bullshit is

   --  To do:
   --   * Enrich the Proposition function
   --   * Person_adjective: "committed", "multi-skilled", "inspirational",
   --                       "high-caliber", "cross-trained", "multi-cultural",
   --                       "fully-fledged"
   --   * other sentences; rhetorical questions
   --   * Slogans, such as: "It's about breaking down the silos"
   --     "less is more", "it's about quality, not about quantity",
   --     "Do one thing. Do it right."
   --   * Fix bugs marked with !!
   --   * "integrate into"
   --   * Bullshit ratio (Emilio)
   --   * mix with specific vocabulary (combined with previous:
   --       blending of (bullshit, normal, custom); type in Delirium)
   --   * ...a [s-whatever] that puts [s-whatever] at the center
   --       of the organization's [whatever]
   --   * "...is top-of-mind", "...is key", "...is critical"
   --   * "How to win?"

   -- Persons or groups --

   function Boss return String is

      function Managing return String is
      begin
         case R8 is
            when 1 => return "Managing ";  --  The others only pretend to manage
            when 2 => return "Acting ";    --  Well, then we could have an actor too
            when 3 => return "General ";
            when others => return "";
         end case;
      end Managing;

      function Title return String is
         function Vice return String is
         begin
            case R40 is
               when 1 .. 10  => return "Vice ";
               when 11     => return "Corporate Vice ";
               when others => return "";
            end case;
         end Vice;
         function Co return String is
         begin
            case R5 is
               when 1 => return "Co-";
               when others => return "";
            end case;
         end Co;
      begin
         case R6 is
            when 1 => return Vice & Co & "Director";
            when 2 => return Co & "Chief";
            when 3 => return Co & "Head";
            when 4 => return Vice & Co & "President";
            when 5 => return "Supervisor";
            when 6 => return Co & "Manager";
         end case;
      end Title;

      function Age return String is
      begin
         case R4 is
            when 1 => return "Senior ";
            when others => return "";
         end case;
      end Age;

      function Exec return String is
      begin
         case R12 is
            when 1 => return "Executive ";
            when 2 => return "Principal ";
            when others => return "";
         end case;
      end Exec;

      function Groupal return String is
      begin
         case R20 is
            when 1 => return "Group ";
            when 2 => return "Global ";
            when 3 => return "Enterprise ";
            when others => return "";
         end case;
      end Groupal;

      function Department return String is
      begin
         case R45 is
            when 1  => return "Human Resources";
            when 2  => return "Controlling";
            when 3  => return "Internal Audit";
            when 4  => return "Legal";
            when 5  => return "Operations";
            when 6  => return "Management Office";
            when 7  => return "Customer Relations";
            when 8  => return "Client Leadership";
            when 9  => return "Client Relationship";
            when 10 => return "Business Planning";
            when 11 => return "Business Operations";
            when 12 => return "IT Strategy";
            when 13 => return "IT Operations";
            when 14 => return "Marketing";
            when 15 => return "Strategic Planning";      -- from a Dilbert cartoon
            when 16 => return "Facilities Management";   -- from a Dilbert cartoon
            when 17 => return "Innovation";
            when 18 => return "Identity";
            when 19 => return "Branding";
            when 20 => return "Diversity and Inclusion";
            when 21 => return "Media Relations";
            when 22 => return "Value Added Services";
            when 23 => return "Technology";
            when 24 => return "Campaigning";
            when 25 => return "Digital Marketing";
            when 26 => return "Digital Transformation Office";
            when 27 => return "Communications";
            when 28 => return "Architecture";
            when 29 => return "Data & Analytics";
            when 30 => return "Compliance";
            when 31 => return "Research & Development";
            when 32 => return "Networking Enhancement";     --  "Bullshit jobs" article, Les Echos
            when 33 => return "Innovative Strategies";      --  "Bullshit jobs" article, Les Echos
            when 34 => return "Global Innovation Insight";  --  "Bullshit jobs" article, Les Echos
            when 35 => return "Transition Transformation";  --  "Bullshit jobs" article, Les Echos
            when 36 => return "Change Management";          --  "Bullshit jobs" article, Les Echos
            when 37 => return "Global Strategy";            --  "Bullshit jobs" article, Les Echos
            when 38 => return "Creativity and Innovation";  --  "Bullshit jobs" article, Les Echos
            when 39 => return "Information Security";  --  http://yetanotherico.com
            when 40 => return "Corporate Planning";
            when 41 => return "Customer Experience"; -- (c) Maria Marino, 2018
            when 42 => return "Growth Initiatives";
            when 43 => return "Finance";
            when 44 => return "AI Strategy";
            when 45 => return "Business Agility";  --  https://dilbert.com/strip/2019-10-28
         end case;
      end Department;

      function Department_or_Top_Role return String is
      begin
         case R58 is
            when  1 => return "Visionary";
            when  2 => return "Digital";
            when  3 => return "Technical";
            when  4 => return "Manifesto";  --  Guffpedia
            when  5 => return "Operating";
            when  6 => return "Product";
            when  7 => return "Scheme";
            when  8 => return "Growth";
            when  9 => return "Brand";                 --  http://yetanotherico.com
            when 10 => return "Sales";                 --  http://yetanotherico.com
            when 11 => return "Networking";            --  http://yetanotherico.com
            when 12 => return "Content";               --  http://yetanotherico.com
            when 13 => return "Holacracy";        --  "Bullshit jobs" article, Les Echos
            when 14 => return "Data Protection";  --  GDPR mania, 2018
            when 15 => return "Risk Appetite";    --  Job offering in a bank, 2018
            --  Bloomberg 2018-10-29:
            --  Snapchat CEO Named Chief Business Officer, Then Changed His Mind
            when 16 => return "Business";
            when others =>
               return Department;
        end case;
      end Department_or_Top_Role;

      function Officer_or_Catalyst return String is
      begin
         case R20 is
            when 1 => return "Catalyst";  --  Guffpedia
            when 2 => return "Futurist";  --  Tech bubble 2.0
            when 3 => return "Strategist";
            when 4 => return "Technologist";
            when 5 => return "Evangelist";
            when 6 => return "Solutionist";  --  https://dilbert.com/strip/2019-10-28
            when 7 => return "Influencer";   --  https://dilbert.com/strip/2019-10-28
            when others =>
               return "Officer";
         end case;
      end Officer_or_Catalyst;

   begin
      case R2 is
         when 1 =>      -- A fully normal boss (eventually, a managing one)
            return Managing & Age & Exec & Title & " of " & Department;
         when others => -- Chief X Officer
            return
               Groupal &
               Abbreviate ("Chief " & Department_or_Top_Role & ' ' & Officer_or_Catalyst, 0.6);
      end case;
   end Boss;

   function Thing_Atom (P : Plurality) return String;

   function Person (P : Plurality) return String is
   begin
      case P is
         when Singular =>
            case R46 is
               when 1  => return "steering committee";
               when 2  => return "group";
               when 3  => return "project manager";
               when 4  => return Thing_Atom (Random_Plural) & " champion";
               when 5  => return "community";
               when 6  => return "sales manager";
               when 7  => return "enabler"; -- also thing
               when 8  => return "powerful champion";
               when 9  => return "thought leader"; -- Thanks Andy!
               when 10 => return "gatekeeper"; -- ME - UWM 2010
               when 11 => return "resource";   -- no, we're not people, we're "resources"
               when 12 => return "senior support staff";
               when 13 => return "brand manager";        -- from a Dilbert cartoon
               when 14 => return "category manager";     -- from a Dilbert cartoon
               when 15 => return "account executive";    -- from a Dilbert cartoon
               when 16 => return "project leader";       -- from a Dilbert cartoon
               when 17 => return "product manager";      -- from a Dilbert cartoon
               when 18 => return "naming committee";
               when 19 => return "executive committee";
               when 20 => return "white-collar workforce";
               when 21 => return "innovator";      --  (obtained by bootstrapping)
               when 22 => return "game changer";
               when 23 => return "visionary";
               when 24 => return "market thinker";
               when 25 => return "network";
               when 26 => return "initiator";
               when 27 => return "change agent";
               when 28 => return "rockstar";
               when 29 => return "facilitator";
               when 30 => return "disruptor";
               when 31 => return "challenger";
               when 32 => return "six-sigma black belt";
               when others =>  --  ~ 1/3
                  return Boss;
            end case;
         when Plural =>
            case R34 is
               when 1  => return "key people";
               when 2  => return "human resources";
               when 3  => return "customers";
               when 4  => return "clients";
               when 5  => return "resources";
               when 6  => return "team players";
               when 7  => return "enablers"; -- also a thing
               when 8  => return "stakeholders";
               when 9  => return "standard-setters";
               when 10 => return "partners";
               when 11 => return "business leaders";
               when 12 => return "thinkers/planners";
               when 13 => return "white-collar workers";
               when 14 => return "board-level executives";  --  (obtained by bootstrapping)
               when 15 => return "key representatives";     --  (obtained by bootstrapping)
               when 16 => return "innovators";     --  (obtained by bootstrapping)
               when 17 => return "policy makers";  --  (obtained by bootstrapping)
               when 18 => return "pioneers";
               when 19 => return "game changers";
               when 20 => return "market thinkers";
               when 21 => return "thought leaders";
               when 22 => return "mediators";
               when 23 => return "facilitators";
               when 24 => return "attackers";
               when 25 => return "initiators";
               when 26 => return "decision makers";
               when 27 => return "Growth Hackers";
               when 28 => return "Digital Marketers";
               when 29 => return "Creative Technologists";
               when 30 => return "Products Managers";
               when 31 => return "Products Owners";
               when 32 => return "disruptors";
               when 33 => return "challengers";
               when 34 => return "growers";  --  1996 article about Enron and others
            end case;
      end case;
   end Person;

   function Matrix_Or_So return String is
   begin
      case R13 is
         when 1 .. 2  => return "organization"; -- a bit flat, but flashy combined with "within the "
         when 3 .. 6  => return "silo";   -- classic 1-dimension units in organizations
         when 7 .. 10 => return "matrix"; -- 2nd dimension, with dotted lines
         when 11      => return "cube";   -- 3rd dimension (Converium); at last then, the company has become totally dysfunctional)
         when 12      => return "sphere"; -- another esoteric 3-dimensional structure - ME 20-Jun-2011
         when 13      => return "pyramid"; -- with a benevolent dictator for life at the top, of course.  Also a Thing.
      end case;
   end Matrix_Or_So;

   -- Things --

   function Thing_Adjective return String is
   begin
      case R499 is
         when 1  => return "efficient";
         when 2  => return "strategic";
         when 3  => return "constructive";
         when 4  => return "proactive";
         when 5  => return "strong";
         when 6  => return "key";
         when 7  => return "global";
         when 8  => return "corporate";
         when 9  => return "cost-effective";
         when 10 => return "focused";
         when 11 => return "top-line";
         when 12 => return "credible";
         when 13 => return "agile";
         when 14 => return "holistic";
         when 15 => return "new"; -- something neutral to add credibility ;-)
         when 16 => return "adaptive";
         when 17 => return "optimal";
         when 18 => return "unique";
         when 19 => return "core";
         when 20 => return "compliant";
         when 21 => return "goal-oriented";
         when 22 => return "non-linear";
         when 23 => return "problem-solving";
         when 24 => return "prioritizing";
         when 25 => return "cultural";
         when 26 => return "future-oriented";
         when 27 => return "potential";
         when 28 => return "versatile";
         when 29 => return "leading";
         when 30 => return "dynamic";
         when 31 => return "progressive";
         when 32 => return "non-deterministic"; -- NF 15-May-2008
                                                --  Added 21-Nov-2008:
         when 33 => return "informed";
         when 34 => return "leveraged";
         when 35 => return "challenging";
         when 36 => return "intelligent";
         when 37 => return "controlled";
         when 38 => return "educated";
         when 39 => return "non-standard";
         when 40 => return "underlying";
         when 41 => return "centralized";
         when 42 => return "decentralized";
         when 43 => return "reliable";
         when 44 => return "consistent";
         when 45 => return "competent";
         when 46 => return "prospective";
            --
         when 47 => return "collateral";
            --  the pyramid-cube 2004, added 2009:
         when 48 => return "functional";
            --
         when 49 => return "tolerably expensive";
         when 50 => return "organic";
         when 51 => return "forward-looking";
         when 52 => return "next-level";
         when 53 => return "executive";
         when 54 => return "seamless";
         when 55 => return "spectral";
         when 56 => return "balanced";
         when 57 => return "effective";
            --  Buzz Phrase Generator.xls (Kurt)
         when 58 => return "integrated";
         when 59 => return "systematized";
         when 60 => return "parallel";
         when 61 => return "responsive";
         when 62 => return "synchronized";
         when 63 => return "carefully-designed";
         when 64 => return "carefully thought-out";
            --  BBC office-speak phrases
         when 65 => return "cascading";
         when 66 => return "high-level";
         when 67 => return "siloed";
            --
         when 68 => return "operational";
         when 69 => return "future-ready";
            --  The Blending
         when 70 => return "flexible";
         when 71 => return "movable";
         when 72 => return "right";
         when 73 => return "productive";
         when 74 => return "evolutionary";
         when 75 => return "overarching";
         when 76 => return "documented";
         when 77 => return "awesome"; -- ME
                                      --  UW Presentation Nov 2010
         when 78 => return "coordinated";
         when 79 => return "aligned";
         when 80 => return "enhanced"; -- ME 15-Jun-2011
         when 81 => return "control-based";

            --  Ludovic:
         when 82 => return "industry-standard";
         when 83 => return "accepted";
         when 84 => return "agreed-upon";
         when 85 => return "target";
         when 86 => return "customer-centric";
         when 87 => return "wide-spectrum";
         --
         when 88 => return "well-communicated";
         --  PDM, July 2011
         when 89 => return "cutting-edge";
         when 90 => return "state-of-the-art";
         when 91 => return "verifiable";
         --
         when 92  => return "six-sigma";
         when 93  => return "solid";
         when 94  => return "inspiring";
         when 95  => return "growing";
         when 96  => return "market-altering";
         when 97  => return "vertical";
         when 98  => return "emerging";
         when 99  => return "differentiating";
         when 100 => return "integrative";
         when 101 => return "cross-functional";
         when 102 => return "measurable";
         when 103 => return "well-planned";
         when 104 => return "accessible";
         when 105 => return "actionable";
         when 106 => return "accurate";
         when 107 => return "insightful";
         when 108 => return "relevant";
         when 109 => return "long-term";
         when 110 => return "longer-term";
         when 111 => return "tactical";
         when 112 => return "best-of-breed";
         when 113 => return "robust";
         when 114 => return "targeted";
         when 115 => return "personalized";
         when 116 => return "interactive";
         when 117 => return "streamlined";
         when 118 => return "transparent";
         when 119 => return "traceable";
         when 120 => return "far-reaching";
         when 121 => return "powerful";
         when 122 => return "improved";
         when 123 => return "executive-level";
         when 124 => return "goal-based";
         when 125 => return "top-level";
         when 126 => return "value-added";
         when 127 => return "value-adding";
         when 128 => return "streamlining";
         when 129 => return "time-honored"; -- PDM
         when 130 => return "idiosyncratic"; -- ED
         when 131 => return "sustainable";
         when 132 => return "in-depth";
         when 133 => return "immersive";
         when 134 => return "cross-industry";
         when 135 => return "time-phased";
         when 136 => return "day-to-day";
         when 137 => return "present-day";
         when 138 => return "modern-day";
         when 139 => return "profit-maximizing";
         when 140 => return "generic";
         when 141 => return "granular";
         when 142 => return "values-based";
         when 143 => return "value-driven";
         when 144 => return "well-defined";
         when 145 => return "outward-looking";
         when 146 => return "scalable";
         when 147 => return "strategy-focused";
         when 148 => return "promising";
         when 149 => return "collaborative";
         when 150 => return "scenario-based";
         when 151 => return "principle-based";
         when 152 => return "vision-setting";
         when 153 => return "client-oriented";
         when 154 => return "long-established";
         when 155 => return "established";
         when 156 => return "organizational";
         when 157 => return "visionary";
         when 158 => return "trusted";
         when 159 => return "full-scale";
         when 160 => return "firm-wide";
         when 161 => return "fast-growth";
         when 162 => return "performance-based";
         when 163 => return "high-performing";
         when 164 => return "high-performance";
         when 165 => return "cross-enterprise";
         when 166 => return "outsourced"; -- BBC - LGA banned words
         when 167 => return "situational"; -- BBC - LGA banned words
         when 168 => return "bottom-up"; -- BBC - LGA banned words
         when 169 => return "multidisciplinary"; -- BBC - LGA banned words
         when 170 => return "one-to-one";
         when 171 => return "goal-directed";
         when 172 => return "intra-organisational";
         when 173 => return "data-inspired";
         when 174 => return "multi-source";
         when 175 => return "360-degree"; -- !! <-> 360-degree thinking
         when 176 => return "motivational";
         when 177 => return "differentiated";
         when 178 => return "solutions-based";
         when 179 => return "compelling";
         when 180 => return "structural";
         when 181 => return "go-to-market";
         when 182 => return "on-message";
         when 183 => return "productivity-enhancing";
         when 184 => return "value-enhancing";
         when 185 => return "mission-critical";
         when 186 => return "business-enabling";
         when 187 => return "transitional";
         when 188 => return "future";
         when 189 => return "game-changing";
         when 190 => return "enterprise-wide";
         when 191 => return "rock-solid";
         when 192 => return "bullet-proof";
         when 193 => return "superior";
         when 194 => return "genuine";
         when 195 => return "alert";
         when 196 => return "nimble";
         when 197 => return "phased";
         when 198 => return "selective";
         when 199 => return "macroscopic";
         when 200 => return "low-risk high-yield";
         when 201 => return "interconnected";
         when 202 => return "high-margin";
         when 203 => return "resilient";
         when 204 => return "high-definition";
         when 205 => return "well-crafted";
         when 206 => return "fine-grained";
         when 207 => return "context-aware";
         when 208 => return "multi-tasked";
         when 209 => return "feedback-based";
         when 210 => return "analytics-based";
         when 211 => return "fact-based";
         when 212 => return "usage-based";
         when 213 => return "multi-channel";
         when 214 => return "omni-channel";
         when 215 => return "cross-channel";
         when 216 => return "specific";
         when 217 => return "heart-of-the-business";
         when 218 => return "responsible";
         when 219 => return "socially conscious";
         when 220 => return "results-centric";
         when 221 => return "business-led";
         when 222 => return "well-positioned";
         when 223 => return "end-to-end";
         when 224 => return "high-quality";
         when 225 => return "siloed";
         when 226 => return "modular";
         when 227 => return "service-oriented";
         when 228 => return "competitive";
         when 229 => return "scale-as-you-grow";
         when 230 => return "outside-in";
         when 231 => return "hyper-hybrid";
         when 232 => return "long-running";
         when 233 => return "large-scale";
         when 234 => return "wide-ranging";
         when 235 => return "wide-range";
         when 236 => return "stellar";
         when 237 => return "dramatic";
         when 238 => return "aggressive";
         when 239 => return "innovative";
         when 240 => return "high-powered";
         when 241 => return "above-average";
         when 242 => return "result-driven";
         when 243 => return "innovation-driven";
         when 244 => return "customized";
         when 245 => return "outstanding";
         when 246 => return "non-mainstream";
         when 247 => return "customer-facing";
         when 248 => return "consumer-facing";
         when 249 => return "unified";
         when 250 => return "cooperative";
         when 251 => return "laser-focused";  -- From a top diplomate
         when 252 => return "well-implemented";
         when 253 => return "diversifying";
         when 254 => return "market-changing";
         when 255 => return "metrics-driven"; -- Found in an article about criminal activities reported with many details
         when 256 => return "pre-integrated"; -- (obtained by bootstrapping)
         when 257 => return "solution-oriented";
         when 258 => return "impactful";
         when 259 => return "world-class";
         when 260 => return "front-end";
         when 261 => return "leading-edge";
         when 262 => return "cost-competitive";
         when 263 => return "extensible";
         when 264 => return "under-the-radar";
         when 265 => return "high-grade";  --  Subprime crisis explanation by The Long Johns ...
         when 266 => return "structured";  --  ... http://www.youtube.com/watch?v=z-oIMJMGd1Q
         when 267 => return "trust-based";
         when 268 => return "intra-company";
         when 269 => return "inter-company";
         when 270 => return "profit-oriented";
         when 271 => return "sizeable";
         when 272 => return "highly satisfactory";
         when 273 => return "bi-face";
         when 274 => return "tri-face";
         when 275 => return "disruptive";
         when 276 => return "technological";
         when 277 => return "marketplace";  --  noun used as an adjective
         when 278 => return "fast-evolving";
         when 279 => return "open";
         when 280 => return "fully networked";
         when 281 => return "adoptable";
         when 282 => return "trustworthy";
         when 283 => return "science-based";
         when 284 => return "non-manufacturing";
         when 285 => return "multi-divisional";
         when 286 => return "controllable";
         when 287 => return "high-priority";
         when 288 => return "market-driven";
         when 289 => return "market-driving";
         when 290 => return "ingenious";              --  (obtained by bootstrapping)
         when 291 => return "business-for-business";  --  (obtained by bootstrapping)
         when 292 => return "inspirational";          --  (obtained by bootstrapping)
         when 293 => return "winning";           --  (obtained by bootstrapping)
         when 294 => return "boundaryless";      --  (obtained by bootstrapping)
         when 295 => return "reality-based";     --  (obtained by bootstrapping)
         when 296 => return "customer-focused";  --  (obtained by bootstrapping)
         when 297 => return "preemptive";  --  (obtained by bootstrapping)
         when 298 => return "location-specific";    --  (obtained by bootstrapping)
         when 299 => return "revealing";            --  (obtained by bootstrapping)
         when 300 => return "inventory-planning";   --  (obtained by bootstrapping)
         when 301 => return "ubiquitous";  --  (obtained by bootstrapping)
         when 302 => return "number-one";  --  (obtained by bootstrapping)
         when 303 => return "results-oriented";  --  (obtained by bootstrapping)
         when 304 => return "socially enabled";  --  (obtained by bootstrapping)
         when 305 => return "well-scoped";    --  (obtained by bootstrapping)
         when 306 => return "insight-based";  --  (obtained by bootstrapping)
         when 307 => return "high-impact";        --  (obtained by bootstrapping)
         when 308 => return "technology-driven";  --  (obtained by bootstrapping)
         when 309 => return "knowledge-based";      --  (obtained by bootstrapping)
         when 310 => return "information-age";      --  (obtained by bootstrapping)
         when 311 => return "technology-centered";  --  (obtained by bootstrapping)
         when 312 => return "critical";      --  (obtained by bootstrapping)
         when 313 => return "cognitive";     --  (obtained by bootstrapping)
         when 314 => return "acculturated";  --  (obtained by bootstrapping)
         when 315 => return "client-centric";  --  2012 Golden Flannel Awards article
         when 316 => return "comprehensive";   --  2011 Golden Flannel Awards article
         when 317 => return "ground-breaking";
         when 318 => return "long-standing";
         when 319 => return "accelerating";
         when 320 => return "forward-thinking";
         when 321 => return "mind-blowing";  --  DM
         when 322 => return "jaw-dropping";  --  DM
         when 323 => return "transformative";
         when 324 => return "better-than-planned";
         when 325 => return "vital";
         when 326 => return "radical";
         when 327 => return "expanding";
         when 328 => return "fierce";
         when 329 => return "single-minded";
         when 330 => return "mindful";
         when 331 => return "top-down";
         when 332 => return "hands-on";
         when 333 => return "one-on-one";
         when 334 => return "analytic";
         when 335 => return "top";
         when 336 => return "elite";
         when 337 => return "dedicated";
         when 338 => return "curated";
         when 339 => return "highly-curated";
         when 340 => return "re-imagined";
         when 341 => return "thought-provoking";
         when 342 => return "quality-oriented";
         when 343 => return "task-oriented";
         when 344 => return "teamwork-oriented";
         when 345 => return "high-growth";
         when 346 => return "next-gen";
         when 347 => return "next-generation";
         when 348 => return "new-generation";
         when 349 => return "best-in-class";
         when 350 => return "best-of-class";
         when 351 => return "first-class";
         when 352 => return "top-class";
         when 353 => return "superior-quality";
         when 354 => return "synergistic";
         when 355 => return "micro-macro";
         when 356 => return "organization-wide";
         when 357 => return "clear-cut";
         when 358 => return "data-driven";
         when 359 => return "evidence-based";
         when 360 => return "transformational";
         when 361 => return "fast-paced";
         when 362 => return "real-time";
         when 363 => return "pre-approved";
         when 364 => return "unconventional";
         when 365 => return "advanced-analytics";
         when 366 => return "insight-driven";
         when 367 => return "sprint-based";
         when 368 => return "digitized";
         when 369 => return "hypothesis-driven";
         when 370 => return "governance-related";
         when 371 => return "convergent";
         when 372 => return "leadership-defined";
         when 373 => return "operations-oriented";
         when 374 => return "long-range";
         when 375 => return "dimensional";
         when 376 => return "award-winning";
         when 377 => return "user-centric";
         when 378 => return "first-to-market";
         when 379 => return "first-mover";
         --  Next one is from http://dilbert.com/strip/2017-04-10: Asok Is In The Jargon Matrix:
         when 380 => return "cross-platform";
         when 381 => return "on-the-go";
         when 382 => return "all-encompassing";
         when 383 => return "matrixed";
         when 384 => return "growth-enabling";
         when 385 => return "skills-based";
         when 386 => return "bottom-line";
         when 387 => return "top-shelf";
         when 388 => return "insourced";
         when 389 => return "out-of-the-box";
         when 390 => return "engaging";
         when 391 => return "on- and offline";
         when 392 => return "goals-based";
         when 393 => return "enriching";
         when 394 => return "medium-to-long-term";
         when 395 => return "adequate";
         when 396 => return "awareness-raising";
         when 397 => return "compatible";
         when 398 => return "supportive";
         when 399 => return "inspired";
         when 400 => return "high-return";
         when 401 => return "turn-key";
         when 402 => return "turnkey";
         when 403 => return "decision-ready";
         when 404 => return "diversified";
         when 405 => return "demanding";          --  (bootstrapped)
         when 406 => return "ambitious";          --  (bootstrapped)
         when 407 => return "domain-relevant";    --  (bootstrapped)
         when 408 => return "novel";              --  (bootstrapped)
         when 409 => return "pre-planned";        --  (bootstrapped)
         when 410 => return "well-respected";
         when 411 => return "market-based";
         when 412 => return "distributor-based";
         when 413 => return "area-wide";
         when 414 => return "movements-based";
         when 415 => return "ever-changing";
         when 416 => return "purpose-driven";
         when 417 => return "resourceful";
         when 418 => return "real-life";
         when 419 => return "vibrant";
         when 420 => return "bright";
         when 421 => return "pure-play";
         when 422 => return "bespoke";
         when 423 => return "pivotal";
         when 424 => return "efficiency-enhancing";
         when 425 => return "multi-level";
         when 426 => return "rich";
         when 427 => return "frictionless";
         when 428 => return "up-to-the-minute";
         when 429 => return "sourced";
         when 430 => return "outcome-driven";
         when 431 => return "hyperaware";
         when 432 => return "high-velocity";
         when 433 => return "lean";
         when 434 => return "unmatched";
         when 435 => return "industry-leading";
         when 436 => return "multi-sided";
         when 437 => return "tailor-made";
         when 438 => return "contingent";
         when 439 => return "tangent";
         when 440 => return "moment-centric";
         when 441 => return "real-world";
         when 442 => return "inclusive";
         when 443 => return "efficiency-enabling";
         when 444 => return "value-creating";
         when 445 => return "alternative";
         when 446 => return "fit-for-purpose";
         when 447 => return "fast-changing";
         when 448 => return "onboarded";
         when 449 => return "active";
         when 450 => return "container packaged";
         when 451 => return "dynamically managed";
         when 452 => return "microservices-oriented";
         when 453 => return "higher-quality";
         when 454 => return "brute-force";
         when 455 => return "enterprise-sales-driven";
         when 456 => return "developer-led";
         when 457 => return "fast-track";
         when 458 => return "highly differentiated";
         when 459 => return "quick-to-deploy";
         when 460 => return "efficiency-focused";
         when 461 => return "as-a-service";
         when 462 => return "cloud-based";
         when 463 => return "activity-centric";
         when 464 => return "data-centric";
         when 465 => return "activity-focused";
         when 466 => return "data-focused";
         when 467 => return "workforce-focused";
         when 468 => return "organization-focused";
         when 469 => return "spot-on";       --  FOSDEM 2019
         when 470 => return "distributed";   --  FOSDEM 2019, with regards to Fred Praca.
         when 471 => return "deterministic"; --  but "non-deterministic" is just as good, see above
         when 472 => return "converged";
         when 473 => return "on-premise";
         when 474 => return "company-first";
         when 475 => return "multi-vendor";
         when 476 => return "contextual";
         when 477 => return "hybrid";
         when 478 => return "higher-level";  --  High-level is not enough.
         when 479 => return "user-driven";
         when 480 => return "full-stack";    --  E.g.: full-stack startup.
         when 481 => return "build-as-you-go";
         when 482 => return "fully-digital";
         when 483 => return "agent-based";
         when 484 => return "socio-economic";
         when 485 => return "managerial";
         when 486 => return "industry-recognized";
         when 487 => return "top-ranking";
         when 488 => return "empowering";
         when 489 => return "courage-building";
         when 490 => return "multi-class";
         when 491 => return "AI-ready";
         when 492 => return "AI-assisted";
         when 493 => return "distinctive";  --  1996 article about Enron and others
         when 494 => return "manageable";   --  1996 article about Enron and others
         when 495 => return "bifocal";      --  1996 article about Enron and others
         when 496 => return "cross-sector";
         when 497 => return "interdisciplinary";
         when 498 => return "data-dependent";
         when 499 => return "gradual";
      end case;
   end Thing_Adjective;

   function Timeless_Event return String is
   begin
      case R4 is
         when 1 => return "kick-off";
         when 2 => return "roll-out";
         when 3 => return "client event";
         when 4 => return "quarterly results";
      end case;
   end Timeless_Event;

   function Growth_Atom return String is
   begin
      case R19 is
         when 1 => return "growth";
         when 2 => return "improvement";
         when 3 => return "throughput increase";
         when 4 => return "efficiency gain";
         when 5 => return "yield enhancement";
         when 6 => return "expansion";
         when 7 => return "productivity improvement";
         when 8 => return "gain in task efficiency";
         when 9 => return "shift in value";  --  (obtained by bootstrapping)
         when 10 => return "cost reduction scaling";
         when 11 => return "cost reduction";
         when 12 => return "cost effectiveness";
         when 13 => return "level of change";
         when 14 => return "revenue growth";
         when 15 => return "profits growth";  --  ironical, from D. Stockman: https://dailyreckoning.com/hurricane-bearing-casino/
         when 16 => return "growth momentum";  --  (bootstrapped)
         when 17 => return "increase in sales";
         when 18 => return "run-rate efficiency";  --  Convoluted form of "cost cutting"
         when 19 => return "increase in margins";
      end case;
   end Growth_Atom;

   function Growth return String is

      function Superlative return String is
      begin
         case R35 is
            when 1 => return "organic";
            when 2 => return "double-digit";
            when 3 => return "upper single-digit";
            when 4 => return "breakout";
               --  Ludovic
            when 5 => return "unprecedented";
            when 6 => return "unparalleled";
            when 7 => return "proven";
            when 8 => return "measured";
               --  2014 stock exchange fads
               --    Some adjectives are also in the common list
            when  9 => return "sustained";
            when 10 => return "sustainable";
            when 11 => return "robust";
            when 12 => return "solid";
            when 13 => return "rock-solid";
            when 14 => return "healthy";
            when 15 => return "incremental";
            when 16 => return "significant";
            when 17 => return "recurring";
            when 18 => return "sizeable";  --  (obtained by bootstrapping)
            when 19 => return "rapid";     --  (obtained by bootstrapping)
            when 20 => return "breakneck";    --  (obtained by bootstrapping) - usual pre-crash adjective
            when 21 => return "profitable";   --  (obtained by bootstrapping) - usual post-crash adjective
            when 22 => return "disciplined";  --  (obtained by bootstrapping)
            when 23 => return "accelerated";  --  (obtained by bootstrapping)
            when 24 => return "impressive";
            when 25 => return "superior";  --  opposite of "subpar"
            when 26 => return "attractive-enough";
            when 27 => return "continual";
            when 28 => return "above-potential";
            when 29 => return "better-than-average";
            when 30 => return "exponential";  --  Search: "Use of the phrase 'exponential growth' by decade"
            when 31 => return "long-term";  --  Used when the growth is not quite happening now...
            when 32 => return "future";     --  Used when the growth is not quite happening now...
            when 33 => return "step-function";
            when 34 => return "outsized";
            when 35 => return "step-change";
         end case;
      end Superlative;

   begin
      return Superlative & ' ' & Growth_Atom;
   end Growth;

   function Thing_Atom (P : Plurality) return String is

      function Inner return String is -- can be made plural
      begin
         case R273 is
            when 1 => return "mission";
            when 2 => return "vision";
            when 3 => return "guideline";
            when 4 => return "roadmap";
            when 5 => return "timeline";
            when 6 => return Matrix_Or_So;
            when 7 => return "win-win solution";
            when 8 => return "baseline starting point";
            when 9 => return "sign-off";
            when 10 => return "escalation";
            when 12 => return "system";
            when 13 => return Abbreviate ("Management Information System", 0.5);
            when 14 => return Abbreviate ("Quality Management System", 0.5);
            when 15 => return "planning";
            when 16 => return "target";
            when 17 => return "calibration";
            when 18 => return Abbreviate ("Control Information System", 0.5);
            when 19 => return "process";
            when 20 => return "talent";
            when 21 => return "execution"; -- Winner 2006!
            when 22 => return "leadership";
            when 23 => return "performance";
            when 24 => return "solution provider";
            when 25 => return "value";
            when 26 => return "value creation";
            when 27 => return "value realization";
            when 28 => return "document";
            when 29 => return "bottom line";
            when 30 => return "momentum";
            when 31 => return "opportunity";
            when 32 => return "credibility";
            when 33 => return "issue";
            when 34 => return "core meeting";
            when 35 => return "platform";
            when 36 => return "niche";
            when 37 => return "content";
            when 38 => return "communication";
            when 39 => return "goal";
            when 40 => return "value creation goal";
            when 41 => return "alternative";
            when 42 => return "culture";
            when 43 => return "requirement";
            when 44 => return "potential";
            when 45 => return "challenge";
            when 46 => return "empowerment";
            when 47 => return "benchmarking";
            when 48 => return "framework";
            when 49 => return "benchmark";
            when 50 => return "implication";
            when 51 => return "integration";
            when 52 => return "enabler"; -- also person
            when 53 => return "control";
            when 54 => return "trend";
               --  the pyramid-cube 2004, added 2009:
            when 55 => return "business case";
            when 56 => return "architecture";
            when 57 => return "action plan";
            when 58 => return "project";
            when 59 => return "review cycle";
            when 11 => return "trigger event";
            when 60 => return "strategy formulation";
            when 61 => return "decision";
            when 62 => return "enhanced data capture";
            when 63 => return "energy";
            when 64 => return "plan";
            when 65 => return "initiative";
            when 66 => return "priority";
            when 67 => return "synergy";
            when 68 => return "incentive";
            when 69 => return "dialogue";
               --  Buzz Phrase Generator.xls (Kurt)
            when 70 => return "concept";
            when 71 => return "time-phase";
            when 72 => return "projection";
               --  Merger buzz 2009:
            when 73 => return "blended approach";
               --  BBC office-speak phrases
            when 74 => return "low hanging fruit";
            when 75 => return "forward planning";
            when 76 => return "pre-plan"; -- also a verb
            when 77 => return "pipeline";
            when 78 => return "bandwidth";
            when 79 => return "brand image";
            when 80 => return "paradigm";
            when 81 => return "paradigm shift";
            when 82 => return "strategic staircase";
               --
            when 83  => return "cornerstone";
            when 84  => return "executive talent";
            when 85  => return "evolution";
            when 86  => return "workflow";
            when 87  => return "message";
               --  GAC 2010
            when 88  => return "risk/return profile";
            when 89  => return "efficient frontier";
            when 90  => return "pillar";
               --  Andy
            when 91  => return "internal client";
            when 92  => return "consistency";
               --  Ludovic
            when 93  => return "on-boarding process";
               --
            when 94  => return "dotted line";
            when 95  => return "action item";
            when 96  => return "cost efficiency";
            when 97  => return "channel";
            when 98  => return "convergence";
            when 99  => return "infrastructure";
            when 100 => return "metric";
            when 101 => return "technology";
            when 102 => return "relationship";
            when 103 => return "partnership";
            when 104 => return "supply-chain";
            when 105 => return "portal";
            when 106 => return "solution";
            when 107 => return "business line";
            when 108 => return "white paper";
            when 109 => return "scalability";
            when 110 => return "innovation";
            when 111 => return Abbreviate ("Strategic Management System", 0.5);
            when 112 => return "Balanced Scorecard";
            when 113 => return "key differentiator"; -- PDM
            when 114 => return "competitive differentiator";  --  Variant of key differentiator
            when 115 => return "idiosyncrasy"; -- ED
            when 116 => return "benefit";
            when 117 => return "say/do ratio";
            when 118 => return "segmentation";
            when 119 => return "image";
            when 120 => return "business model";
            when 121 => return Abbreviate ("Business Model Innovation", 1.0);
            when 122 => return "business philosophy";
            when 123 => return "business platform";
            when 124 => return "methodology";
            when 125 => return "profile";
            when 126 => return "measure";
            when 127 => return "measurement";
            when 128 => return "philosophy";
            when 129 => return "branding strategy";
            when 130 => return "efficiency";
            when 131 => return "industry";
            when 132 => return "commitment";
            when 133 => return "perspective";
            when 134 => return "risk appetite";
            when 135 => return "best practice";
            when 136 => return "brand identity";
            when 137 => return "customer centricity"; -- Mili
            when 138 => return "shareholder value"; -- Andrew
            when 139 => return "attitude";
            when 140 => return "mindset";
            when 141 => return "flexibility";
            when 142 => return "granularity";
            when 143 => return "engagement";
            when 144 => return "pyramid";
            when 145 => return "market";
            when 146 => return "diversity";
            when 147 => return "interdependency";
            when 148 => return "scaling";
            when 149 => return "asset";
            when 150 => return "flow charting";
            when 151 => return "value proposition";
            when 152 => return "performance culture";
            when 153 => return "change";
            when 154 => return "reward";
            when 155 => return "learning";
            when 156 => return "next step";
            when 157 => return "delivery framework";
            when 158 => return "structure";
            when 159 => return "support structure";
            when 160 => return "standardization";
            when 161 => return "objective";
            when 162 => return "footprint";
            when 163 => return "transformation process";
            when 164 => return "policy";
            when 165 => return "sales target";
            when 166 => return "ecosystem";
            when 167 => return "landscape";
            when 168 => return "atmosphere";
            when 169 => return "environment";
            when 170 => return "core competency";
            when 171 => return "market practice";
            when 172 => return "operating strategy";
            when 173 => return "insight";
            when 174 => return "accomplishment";
            when 175 => return "correlation";
            when 176 => return "touch point";
            when 177 => return "knowledge transfer";
            when 178 => return "correlation";
            when 179 => return "capability";
            when 180 => return "gamification";
            when 181 => return "smooth transition";  --  I was caught saying that...
            when 182 => return "leadership strategy";
            when 183 => return "collaboration";
            when 184 => return "success factor";
            when 185 => return "lever";
            when 186 => return "breakthrough";
            when 187 => return "open-door policy";
            when 188 => return "recalibration";
            when 189 => return "wow factor"; -- (obtained by bootstrapping)
            when 190 => return "onboarding solution"; -- (obtained by bootstrapping)
            when 191 => return "brand pyramid";
            when 192 => return "dashboard";
            when 193 => return "branding";
            when 194 => return "local-for-local strategy";
            when 195 => return "cross-sell message";   --  (obtained by bootstrapping)
            when 196 => return "up-sell message";      --  (obtained by bootstrapping)
            when 197 => return "divisional structure"; --  (obtained by bootstrapping)
            when 198 => return "value chain";  --  (obtained by bootstrapping)
            when 199 => return "microsegment";  --  (obtained by bootstrapping)
            when 200 => return "rollout plan";  --  (obtained by bootstrapping)
            when 201 => return Abbreviate ("Leadership Development System", 0.5);
            when 202 => return "architectural approach";         --  (obtained by bootstrapping)
            when 203 => return "brand value";
            when 204 => return "milestone";  --  2012 Golden Flannel Awards article
            when 205 => return "co-innovation";
            when 206 => return "speedup";
            when 207 => return "validation";
            when 208 => return "skill";
            when 209 => return "skillset";      --  Guffpedia
            when 210 => return "feedback";
            when 211 => return "learnability";  --  Guffpedia
            when 212 => return "visibility";    --  Guffpedia
            when 213 => return "agility";
            when 214 => return "simplification";
            when 215 => return "digitization";
            when 216 => return "streamlining";
            when 217 => return "brainstorming space";
            when 218 => return "crowdsourcing";
            when 219 => return "big-bang approach";
            when 220 => return "execution message";
            when 221 => return "criticality";
            when 222 => return "opportunity pipeline";
            when 223 => return "reorganization";
            when 224 => return "synergization";
            when 225 => return "socialization";
            when 226 => return "strategic shift";
            when 227 => return "growth engine";
            when 228 => return "tailwind";
            when 229 => return "accelerator";
            when 230 => return "deliverable";
            when 231 => return "takeaway";
            when 232 => return "insourcing";
            when 233 => return "outsourcing";
            when 234 => return "careful consideration";
            when 235 => return "conviction";
            when 236 => return "initiator";
            when 237 => return "operating model";
            when 238 => return "proof-point";
            when 239 => return "bounce rate";
            when 240 => return "marketing funnel";
            when 241 => return "offshoring";
            when 242 => return "quick-win";
            when 243 => return "cross-pollination";
            when 244 => return "hybridation";
            when 245 => return "positioning";
            when 246 => return "reinvention";
            when 247 => return "functionality";
            when 248 => return "mindshare";
            when 249 => return "mobility space";
            when 250 => return "decision-to-execution cycle";
            when 251 => return "adjustment";                --  Article about doublespeak
            when 252 => return "force management program";  --  Article about doublespeak
            when 253 => return "launchpad";
            when 254 => return "value-chain";
            when 255 => return "motion";
            when 256 => return "customer-orientation";
            when 257 => return "realignment";
            when 258 => return "governmentalization"; -- FOSDEM 2019
            when 259 => return "case study";
            when 260 => return "aspirational destination";
            when 261 => return "Innovation Incubator";
            when 262 => return "input";
            when 263 => return "scope";
            when 264 => return "action";
            when 265 => return "context";
            when 266 => return "next level";
            when 267 => return "topology";
            when 268 => return "data point";
            when 269 => return "enablement";
            when 270 => return "test-first design";    --  Agile development 2.0
            when 271 => return "R&D initiative";
            when 272 => return "blockchain";  --  Thx Vinzent Hoefler
            when 273 => return "blockchain technology";
         end case;
      end Inner;

   begin
      case P is
         when Singular =>
            case R490 is  --  assume equiprobability between explicit singular and "others => ..." items
               --  Things where plural would sound clunky.
               when 1   => return Timeless_Event;
               when 2   => return "team building";
               when 3   => return "focus";
               when 4   => return "strategy";
               when 5   => return "planning granularity";
               when 6   => return "core business";
               when 7   => return "implementation";
               when 8   => return "intelligence";
               when 9   => return "change management";
               when 10  => return "ROE";
               when 11  => return "EBITDA";
               when 12  => return "enterprise content management";
               when 13  => return "excellence";
               when 14  => return "trust";
               when 15  => return "respect";
               when 16  => return "openness";
               when 17  => return "transparency";
               when 18  => return Abbreviate ("Quality Research", 0.5);
               when 19  => return "decision making";
               when 20  => return "risk management";
               when 21  => return "enterprise risk management";
               when 22  => return "leverage";
               when 23  => return "diversification";
               when 24  => return "successful execution";
               when 25  => return "effective execution";
                  --  Directly pasted from a management presentation (2009)
               when 26  => return "selectivity";
               when 27  => return "optionality";
               when 28  => return "expertise";
               when 29  => return "awareness";
               when 30  => return "broader thinking";
               when 31  => return "client focus";
               when 32  => return "thought leadership"; -- Thanks Andy!
               when 33  => return "quest for quality"; -- caracal
                  --  BBC office-speak phrases
               when 34  => return "360-degree thinking";
               when 35  => return "drill-down";
               when 36  => return "impetus";
               when 37  => return "fairness";
               when 38  => return "intellect";
               when 39  => return "emotional impact";
               when 40  => return "emotional intelligence";
               when 41  => return "adaptability";
               when 42  => return "stress management";
               when 43  => return "self-awareness";
               when 44  => return "strategic thinking";
               when 45  => return "cross-fertilization"; -- Andy
               when 46  => return "cross-breeding";
               when 47  => return Abbreviate ("Customer Experience", 0.5);
               when 48  => return Abbreviate ("Customer Experience Management", 0.5);
               when 49  => return "SWOT analysis";
               when 50  => return "responsibility";
               when 51  => return "accountability";
               when 52  => return "ROI";
               when 53  => return "line of business";
               when 54  => return "serviceability";
               when 55  => return "responsiveness";
               when 56  => return "simplicity";
               when 57  => return "portfolio shaping";
               when 58  => return "knowledge sharing";
               when 59  => return "continuity";
               when 60  => return "visual thinking";
               when 61  => return "interoperability";
               when 62  => return "compliance";
               when 63  => return "teamwork";
               when 64  => return "self-efficacy";
               when 65  => return "decision-maker";
               when 66  => return "line-of-sight";
               when 67  => return "scoping"; -- BBC - LGA banned words
               when 68  => return "line-up";
               when 69  => return "predictability";
               when 70  => return "recognition";
               when 71  => return "investor confidence";
               when 72  => return "competitive advantage";
               when 73  => return "uniformity";
               when 74  => return "connectivity";
               when 75  => return "big picture";
               when 76  => return "big-picture thinking";
               when 77  => return "quality";
               when 78  => return "upside focus";
               when 79  => return "sustainability";
               when 80  => return "resiliency";
               when 81  => return "social sphere";
               when 82  => return "intuitiveness";
               when 83  => return "effectiveness";
               when 84  => return "competitiveness";
               when 85  => return "resourcefulness";
               when 86  => return "informationalization";
               when 87  => return "role building";
               when 88  => return "talent retention";
               when 89  => return "innovativeness";
               when 90  => return "Economic Value Creation";
               when 91  => return "intellectual capital";
               when 92  => return "high quality";
               when 93  => return "full range of products";
               when 94  => return "technical strength";
               when 95  => return "quality assurance";
               when 96  => return "specification quality";
               when 97  => return "market environment";
               when 98  => return "client perspective";
               when 99  => return "solution orientation";
               when 100 => return "client satisfaction"; -- new old buzzword in 2014
               when 101 => return "integrity";
               when 102 => return "reputation";
               when 103 => return "time-to-market";
               when 104 => return "innovative edge";
               when 105 => return "book value growth";
               when 106 => return "global network";
               when 107 => return "ability to deliver";
               when 108 => return "active differentiation";
               when 109 => return "solid profitability";
               when 110 => return "core capacity";
               when 111 => return "digital economy";
               when 112 => return "white-collar productivity";
               when 113 => return "white-collar efficiency";
               when 114 => return "governance";
               when 115 => return "corporate governance";
               when 116 => return "business development";
               when 117 => return "corporate identity";
               when 118 => return "attractiveness";  --  (obtained by bootstrapping)
               when 119 => return "design philosophy";  --  (obtained by bootstrapping)
               when 120 => return "global footprint";   --  (obtained by bootstrapping)
               when 121 => return "risk taking";        --  (obtained by bootstrapping)
               when 122 => return "focus on speed";     --  (obtained by bootstrapping)
               when 123 => return "business equation";  --  (obtained by bootstrapping)
               when 124 => return "edge";               --  (obtained by bootstrapping)
               when 125 => return "ownership";          --  (obtained by bootstrapping)
               when 126 => return "competitive success";  --  (obtained by bootstrapping)
               when 127 => return "discipline";  --  (obtained by bootstrapping)
               when 128 => return "knowledge management";  --  (obtained by bootstrapping)
               when 129 => return "ability to move fast";
               when 130 => return "ingenuity";
               when 131 => return "insightfulness";
               when 132 => return "integrativeness";  --  (obtained by bootstrapping)
               when 133 => return "customer footprint";  --  2012 Golden Flannel Awards article
               when 134 => return "time-to-value";       --  2011 Golden Flannel Awards article
               when 135 => return "efficacy";            --  2015 Golden Flannel Awards article
               when 136 => return "DNA";
               when 137 => return "dedication";
               when 138 => return "franchise";
               when 139 => return "global reach";
               when 140 => return "global touch-base";  --  2016 Golden Flannel Awards
               when 141 => return "technical excellence";
               when 142 => return "values congruence";
               when 143 => return "purpose";
               when 144 => return "catalyst for growth";
               when 145 => return "goal setting";
               when 146 => return "craftsmanship";
               when 147 => return "operational excellence";
               when 148 => return "re-engineering";
               when 149 => return "mindfulness";
               when 150 => return "quality thinking";
               --  Next 3 are from http://dilbert.com/strip/2017-04-11: Dilbert Enters The Jargon Matrix:
               when 151 => return "user experience";
               when 152 => return "speed of execution";
               when 153 => return "responsive design";
               when 154 => return "readiness to go ""all-in""";
               when 155 => return "machine intelligence";
               when 156 => return "creativity";
               when 157 => return "can-do attitude";
               when 158 => return "relevance";
               when 159 => return "disruption";             --  (obtained by bootstrapping)
               when 160 => return "dematerialization";      --  (obtained by bootstrapping)
               when 161 => return "disintermediation";      --  (obtained by bootstrapping)
               when 162 => return "disaggregation";         --  (obtained by bootstrapping)
               when 163 => return "wave of change";         --  (obtained by bootstrapping)
               when 164 => return "digitalization";         --  (obtained by bootstrapping)
               when 165 => return "CAPEX";                  --  (obtained by bootstrapping)
               when 166 => return "window of opportunity";
               when 167 => return "beta";
               when 168 => return "coopetition";
               when 169 => return "digital change";
               when 170 => return "business excellence";
               when 171 => return "business impact";
               when 172 => return "business acumen";
               when 173 => return "leadership culture";
               when 174 => return "glocalization";         --  Article about doublespeak
               when 175 => return "re-equitizing";         --  Article about doublespeak
               when 176 => return "cost rationalization";  --  Article about doublespeak
               when 177 => return "strategic optionality";
               when 178 => return "product expertise";
               when 179 => return "velocity";
               when 180 => return "elasticity";
               when 181 => return "value stream management";
               when 182 => return "digital acceleration";
               when 183 => return "quality control";
               when 184 => return "decision-making";
               when 185 => return "digital business";
               when 186 => return "Organizational Intelligence";
               when 187 => return "Business Intelligence";
               when 188 => return "self-actualization";
               when 189 => return "leadership effectiveness";
               when 190 => return "customer's journey"; -- FOSDEM 2019
               when 191 => return "adding services"; -- FOSDEM 2019
               when 192 => return "centerpiece";
               when 193 => return "modern simplicity";
               when 194 => return "cost control";
               when 195 => return "operations delivery";
               when 196 => return "guidance";
               when 197 => return "onboarding";
               when 198 => return "cost structure";
               when 199 => return "traction";
               when 200 => return "ethos";  --  Thx Elias!
               when 201 => return "auditability";
               when 202 => return "business agility";
               when 203 => return "capital agility";
               when 204 => return "agile planning";
               when 205 => return "data science innovation";
               when 206 => return "project management";
               when 207 => return "business process quality engineering";
               when 208 => return "field workforce optimization";
               when 209 => return "business operations strategy design and velocity";
               when 210 => return "delivery of business value";
               when 211 => return "client-centricity";
               --  2021-01-12: https://finance.yahoo.com/ : "2021's buzziest phrase has already been a winner" :
               when 212 => return "operating leverage";
               when 213 => return "interplay between " &
                                    Thing_Atom (Random_Plural) & " and " &
                                    Thing_Atom (Random_Plural);
               when 214 => return "next stage of growth";
               when 215 => return "high-volume production";
               when 216 => return "artificial intelligence";
               when 217 => return "DNA sequencing";
               --  Equiprobable:
               when others => return Inner;
            end case;
         when Plural =>
            case R317 is  --  assume equiprobability between explicit plural and "others => ..." items
               --  Things you find usually as plural
               when 1  => return "key target markets";
               when 2  => return "style guidelines";
               when 3  => return "key performance indicators";
               when 4  => return "market conditions";
               when 5  => return "market forces";
               when 6  => return "market opportunities";
               when 7  => return "tactics";
                  --
               when 8 => return "organizing principles";
                  --  GAC 2010
               when 9 => return "interpersonal skills";
                  --  UWM 2010
               when 10 => return "roles and responsibilities";
               when 11 => return "cost savings";
                  --  Directly pasted from a management presentation (2009)
               when 12 => return "lessons learned";
               when 13 => return "client needs";
               when 14 => return "requests / solutions";
               when 15 => return "mobile strategies";
               when 16 => return "expectations and allocations";
               when 17 => return "workshops";
               when 18 => return "dynamics";  --  (obtained by bootstrapping)
               when 19 => return "options";   --  (obtained by bootstrapping)
               when 20 => return "aspirations";  --  (obtained by bootstrapping)
               when 21 => return "swim lanes";  --  2015 Golden Flannel Awards article
               when 22 => return "pockets of opportunities";
               when 23 => return "social implications";
               when 24 => return "analytics";
               when 25 => return "advanced analytics";
               when 26 => return "growth years";
               when 27 => return "big data";
               when 28 => return "adjacencies";
               when 29 => return "core competences";
               when 30 => return "strengths";
               when 31 => return "corporate values";
               when 32 => return "core values";
               when 33 => return "competitive dynamics";   --  Article about doublespeak
               when 34 => return "workforce adjustments";  --  Article about doublespeak
               when 35 => return "lessons learned";
               when 36 => return "core verticals";
               when 37 => return "metrics"; -- FOSDEM 2019
               when 38 => return "cost-control measures";
               when 39 => return "expectations";
               when 40 => return "data practices";
               when 41 => return "industry market shifts";
               when 42 => return "regulatory pivots";
               when 43 => return "customer behavior patterns";
               when 44 => return "robotics";

               --  Equiprobable:
               when others => return Make_Eventual_Plural (Inner, Plural);
            end case;
      end case;
   end Thing_Atom;

   function Thing (P : Plurality) return String is
   begin
      case R160 is
         when  1 .. 9 =>   -- 2 adjectives, comma separated
            return
               Thing_Adjective & ", " &
               Thing_Adjective & ", " &
               Thing_Atom (P);
         when 10 .. 14 =>  -- 2 adjectives, separated by "and"
            return
               Thing_Adjective & " and " &
               Thing_Adjective & ' ' &
               Thing_Atom (P);
         when 15 .. 80 =>  -- 1 adjective
            return
               Thing_Adjective & ' ' &
               Thing_Atom (P);
         when 81 .. 82 =>  -- 2 adjectives, separated by "and/or"
            return
               Thing_Adjective & " and/or " &
               Thing_Adjective & ' ' &
               Thing_Atom (P);
         when 83 .. 84 =>
            return Growth; -- already has a superlative, don't add an adjective
         when 85 .. 90 =>  -- 3 adjectives
            return
               Thing_Adjective & ", " &
               Thing_Adjective & " and " &
               Thing_Adjective & ' ' &
               Thing_Atom (P);
         when 91 .. 94 =>  -- 4 adjectives
            return
               Thing_Adjective & ", " &
               Thing_Adjective & ", " &
               Thing_Adjective & " and " &
               Thing_Adjective & ' ' &
               Thing_Atom (P);
         when others =>
            return Thing_Atom (P);
      end case;
   end Thing;

   -----------------------------------
   --   The Bad Things.   Whaaaa!   --
   -----------------------------------
   --
   --  They are always in plural. Singular is avoided for two reasons:
   --
   --    1. It would be too specific. Someone could be tempted to ask for details!
   --    2. It may be the beginning of a finger-pointing session. Better stay
   --         impersonal to survive the meeting...

   function Bad_Things return String is
   begin
      case R51 is
         when 1  => return "issues";
         when 2  => return "intricacies";
         when 3  => return "organizational diseconomies";
         when 4  => return "black swans";
         when 5  => return "challenging market conditions";
         when 6  => return "inefficiencies";
         when 7  => return "overlaps";
         when 8  => return "known unknowns";
         when 9  => return "unknown unknowns";
         when 10 => return "soft cycle issues";
         when 11 => return "obstacles";
         when 12 => return "surprises";
         when 13 => return "weaknesses"; -- The W in SWOT
         when 14 => return "threats";    -- The T in SWOT
         when 15 => return "barriers to success";
         when 16 => return "barriers";
         when 17 => return "barriers to growth";  --  Seen in a train, on a printed presentation
         when 18 => return "problems";
         when 19 => return "uncertainties";
         when 20 => return "unfavorable developments";
         when 21 => return "consumer/agent disconnects";
         when 22 => return "underperforming areas";
         when 23 => return "information overloads";
         when 24 => return "concerns";  --  (obtained by bootstrapping)
         when 25 => return "shortfalls";  --  (obtained by bootstrapping)
         when 26 => return "limitations";  --  (obtained by bootstrapping)
         when 27 => return "downtimes";  --  (obtained by bootstrapping)
         when 28 => return "headwinds";
         when 29 => return "subpar returns";
         when 30 => return "gaps";
         when 31 => return "market gaps";
         when 32 => return "capability gaps";
         when 33 => return "constraints";
         when 34 => return "problems/difficulties";
         when 35 => return "bottlenecks";
         when 36 => return "misunderstandings";
         when 37 => return "dilemmas";
         when 38 => return "interdependencies";
         when 39 => return "discontinuities";
         when 40 => return "hiccups";
         when 41 => return "vulnerabilities";
         when 42 => return "negative cash flows";                --  Article about doublespeak
         when 43 => return "net profit revenue deficiencies";    --  Article about doublespeak
         when 44 => return "negative contributions to profits";  --  Article about doublespeak
         when 45 => return "shortcomings";
         when 46 => return "pitfalls";
         when 47 => return "friction"; -- FOSDEM 2019; note: not plural
         when 48 => return "red flags";
         when 49 => return "roadblocks";
         when 50 => return "decision-making biases";
         when 51 => return "second-round effects";
      end case;
   end Bad_Things;

   -- Verbs --

   function Eventual_Adverb return String is
   begin
      case R136 is -- proportion: 3/4 empty adverb
         when 1 => return "interactively ";
         when 2 => return "credibly ";
         when 3 => return "quickly ";
         when 4 => return "proactively ";
         when 5 => return "200% ";
         when 6 => return "24/7 ";
            --  UW Presentation Nov 2010
         when 7 => return "globally ";
         when 8 => return "culturally ";
         when 9 => return "technically ";
         --
         when 10 => return "strategically ";
         when 11 => return "swiftly ";
         when 12 => return "cautiously ";
         when 13 => return "expediently ";
         when 14 => return "organically ";
         when 15 => return "carefully ";
         when 16 => return "significantly ";
         when 17 => return "conservatively ";
         when 18 => return "adequately ";
         when 19 => return "genuinely ";
         when 20 => return "efficiently ";
         when 21 => return "seamlessly ";
         when 22 => return "consistently ";
         when 23 => return "diligently ";
         when 24 => return "dramatically ";  --  (obtained by bootstrapping)
         when 25 => return "straightforwardly ";  --  (obtained by bootstrapping)
         when 26 => return "differentially ";  --  (obtained by bootstrapping)
         when 27 => return "gradually ";
         when 28 => return "aggressively ";  --  2011 Golden Flannel Awards article
         when 29 => return "cost-effectively ";
         when 30 => return "proactively ";
         when 31 => return "inherently ";
         when 32 => return "directionally ";
         when 33 => return "relentlessly ";
         when 34 => return "radically ";
         when others => return "";
      end case;
   end Eventual_Adverb;

   function Add_Random_Article (P : Plurality; To : String) return String is
   begin
      case R15 is
         when 1 .. 2  => return "the " & To;
         when 3 .. 6  => return "our " & To;
         when 7 .. 15 => return Add_Indefinite_Article (P, To);
            --  Indefinite is preferred in BS language.
      end case;
   end Add_Random_Article;

   function Thing_With_Random_Article (P : Plurality) return String is
   begin
      if P = Singular and then R100 = 1 then
         --  The "why" is always the "why". Why?
         return "the ""why"" behind " & Thing_Atom (Random_Plural); -- FOSDEM 2019
      end if;
      return Add_Random_Article (P, Thing (P));
   end Thing_With_Random_Article;

   function Eventual_Postfixed_Adverb return String is
      P : constant Plurality := Random_Plural;
   begin
      case R275 is  --  proportion: ~ 4/5 empty postfixed adverb
         when 1 => return " going forward";
         when 2 => return " within the industry";
         when 3 => return " across the board";
            --  BBC office-speak phrases
         when 4 => return " in this space";
         when 5 => return " from the get-go";
         when 6 => return " at the end of the day";
         when 7 => return " throughout the organization";
         when 8 => return " as part of the plan";
         when 9 => return " by thinking outside of the box";
         when 10 => return " using " & Thing_With_Random_Article (P);
         when 11 => return " by leveraging " & Thing_With_Random_Article (P);
         when 12 => return " taking advantage of " & Thing_With_Random_Article (P);
         when 13 => return " within the " & Matrix_Or_So;
         when 14 => return " across the " & Make_Eventual_Plural (Matrix_Or_So, Plural);
         when 15 => return " across and beyond the " & Make_Eventual_Plural (Matrix_Or_So, Plural);
         when 16 => return " resulting in " & Add_Indefinite_Article (Singular, Growth);
         when 17 => return " reaped from our " & Growth;
         when 18 => return " as a consequence of " & Add_Indefinite_Article (Singular, Growth);
         when 19 => return " because " & Thing_With_Random_Article (P)
                           & ' ' & Build_Plural_Verb ("produce", P) & ' '
                           & Add_Indefinite_Article (Singular, Growth);
         when 20 => return " ahead of schedule";
         when 21 => return ", relative to our peers";
         when 22 => return " on a transitional basis";
         when 23 => return " by expanding boundaries";
         when 24 => return " by nurturing talent";
         when 25 => return ", as a Tier 1 company";
         when 26 => return " up-front";
         when 27 => return " on-the-fly";
         when 28 => return " across our portfolio";
         when 29 => return " 50/50";
         when 30 => return " up, down and across the " & Matrix_Or_So;
         when 31 => return " in the marketplace";
         when 32 => return " by thinking and acting beyond boundaries";
         when 33 => return " at the individual, team and organizational level";
         when 34 => return " ensuring " & Add_Indefinite_Article (P, Thing (P));  --  (obtained by bootstrapping)
         when 35 => return " over the long term";
         when 36 => return " across geographies";  --  2012 Golden Flannel Awards article
         when 37 => return " in the core";         --  2011 Golden Flannel Awards article
         when 38 => return " across industry sectors";
         when 39 => return " across the wider Group";
         when 40 => return ", paving the way for " & Add_Indefinite_Article (P, Thing (P));
         when 41 => return " by levelling the playing field";  --  2016 Golden Flannel Awards
         when 42 => return " on a day-to-day basis";
         when 43 => return " across boundaries";
         when 44 => return " within the community";
         when 45 => return " from within the data";
         when 46 => return " round-the-clock";
         when 47 => return " moving forward";
         when 48 => return " downstream";
         when 49 => return " down the chain";
         when 50 => return " in the space";
         when 51 => return " across the entire spectrum";  --  Thx Elias!
         when 52 => return " as a matter of day-to-day operations";
         when 53 => return " by turning data into " & Thing (P);
         when 54 => return " without pre-empting or constraining future flexibility";
         when 55 => return " as industries transform";
         when others => return "";
      end case;
   end Eventual_Postfixed_Adverb;

   function Person_Verb_Having_Thing_Complement (P : Plurality; Infinitive : Boolean) return String is
      function Inner return String is
      begin
         case R103 is
            when   1 => return "manage";
            when   2 => return "target";
            when   3 => return "streamline";
            when   4 => return "improve";
            when   5 => return "optimize";
            when   6 => return "achieve";
            when   7 => return "secure";
            when   8 => return "address";
            when   9 => return "boost";
            when  10 => return "deploy";
            when  11 => return "innovate";
            when  12 => return "right-scale";
            when  13 => return "formulate";
            when  14 => return "transition";
            when  15 => return "leverage";
            when  16 => return "focus on";
            when  17 => return "synergize";
            when  18 => return "generate";
            when  19 => return "analyse";
            when  20 => return "integrate";
            when  21 => return "empower";
            when  22 => return "benchmark";
            when  23 => return "learn";
            when  24 => return "adapt";
            when  25 => return "enable";
            when  26 => return "strategize";
            when  27 => return "prioritize";
               --   BBC office-speak phrases
            when  28 => return "pre-prepare";
            when  29 => return "deliver";
            when  30 => return "champion";
            when  31 => return "embrace";
            when  32 => return "enhance";
            when  33 => return "engineer";
            when  34 => return "envision";
            when  35 => return "incentivize";
            when  36 => return "maximize";
            when  37 => return "visualize";
            when  38 => return "whiteboard";
            when  39 => return "institutionalize";
            when  40 => return "promote";
            when  41 => return "overdeliver";
            when  42 => return "right-size";
            when  43 => return "rebalance";
            when  44 => return "re-imagine";
            when  45 => return "influence";
            when  46 => return "facilitate";
            when  47 => return "drive";
            when  48 => return "structure";
            when  49 => return "standardize";
            when  50 => return "accelerate";
            when  51 => return "deepen";
            when  52 => return "strengthen";
            when  53 => return "broaden";
            when  54 => return "enforce";
            when  55 => return "establish";
            when  56 => return "foster";
            when  57 => return "build";
            when  58 => return "differentiate";
            when  59 => return "take a bite out of";
            when  60 => return "table";
            when  61 => return "flesh out";
            when  62 => return "reach out";
            when  63 => return "jump-start";
            when  64 => return "co-create";      --  (obtained by bootstrapping)
            when  65 => return "capitalize on";  --  (obtained by bootstrapping)
            when  66 => return "calibrate";  --  (obtained by bootstrapping)
            when  67 => return "re-aggregate";  --  2011 Golden Flannel Awards article
            when  68 => return "articulate";    --  2014 Golden Flannel Awards article
            when  69 => return "iterate";       --  2015 Golden Flannel Awards article
            when  70 => return "reinvest in";   --  2015 Golden Flannel Awards article
            when  71 => return "potentiate";    --  2015 Golden Flannel Awards article
            when  72 => return "front-face";    --  2015 Golden Flannel Awards article
            when  73 => return "co-develop";
            when  74 => return "take control of";
            when  75 => return "robustify";  --  Guffpedia
            when  76 => return "harness";  --  2016 Golden Flannel Awards
            when  77 => return "activate";
            when  78 => return "showcase";
            when  79 => return "cherry-pick";
            when  80 => return "digitize";
            when  81 => return "re-invent";
            when  82 => return "springboard";
            when  83 => return "solutionize";
            when  84 => return "re-content";
            when  85 => return "commoditize";
            when  86 => return "be eager for";
            when  87 => return "productize";
            when  88 => return "repurpose";
            when  89 => return "reenergize";
            when  90 => return "co-specify";
            when  91 => return "codify";
            when  92 => return "cross-pollinate";
            when  93 => return "ignite";
            when  94 => return "transgenerate";
            when  95 => return "orchestrate";
            when  96 => return "envisioneer";
            when  97 => return "reintermediate";
            when  98 => return "reframe";
            when  99 => return "control";
            when 100 => return "ideate";
            when 101 => return "reprioritize";
            when 102 => return "operate";  --  with or without ending
            when 103 => return "cascade";  --  E.g.: to cascade information
         end case;
      end Inner;
   begin
      if Infinitive then  --  be /= are
         return Inner;
      else
         return Build_Plural_Verb (Inner, P);
      end if;
   end Person_Verb_Having_Thing_Complement;

   --  Something Bad is going to happen. Fortunately Supermarketman is there
   --  with his secret weapon to clean the Evil thing and rescue the Business.
   --  Well, at least there will be a meeting to begin a discussion about it.

   function Person_Verb_Having_Bad_Thing_Complement (P : Plurality) return String is
      function Inner return String is
      begin
         case R12 is
            when 1  => return "address";
            when 2  => return "identify";
            when 3  => return "avoid";
            when 4  => return "mitigate";
            when 5  => return "minimize";
            when 6  => return "overcome";
            when 7  => return "tackle";
            when 8  => return "reduce";
            when 9  => return "alleviate";
            when 10 => return "filter out";
            when 11 => return "remove"; -- FOSDEM 2019
            when 12 => return "prevent";
         end case;
      end Inner;
   begin
      return Build_Plural_Verb (Inner, P);
   end Person_Verb_Having_Bad_Thing_Complement;

   --  (thing) verb (thing)

   function Thing_Verb_Having_Thing_Complement (P : Plurality) return String is
      function Inner return String is
      begin
         case R43 is
            when 1  => return "streamline";
            when 2  => return "interact with";
            when 3  => return "boost";
            when 4  => return "generate";
            when 5  => return "impact";
            when 6  => return "enhance";
            when 7  => return "leverage";
            when 8  => return "synergize";
            when 9  => return "generate";
            when 10 => return "empower";
            when 11 => return "enable";
            when 12 => return "prioritize";
            when 13 => return "transfer";
            when 14 => return "drive";
            when 15 => return "result in";
            when 16 => return "promote";
            when 17 => return "influence";
            when 18 => return "facilitate";
            when 19 => return "aggregate";
            when 20 => return "architect";
            when 21 => return "cultivate";
            when 22 => return "engage";
            when 23 => return "structure";
            when 24 => return "standardize";
            when 25 => return "accelerate";
            when 26 => return "deepen";
            when 27 => return "strengthen";
            when 28 => return "enforce";
            when 29 => return "foster";
            when 30 => return "turbocharge";
            when 31 => return "granularize";      --  (obtained by bootstrapping)
            when 32 => return "operationalize";   --  (obtained by bootstrapping)
            when 33 => return "reconceptualize";  --  (obtained by bootstrapping)
            when 34 => return "iterate";  --  2014 Golden Flannel Awards article
            when 35 => return "revolutionise";
            when 36 => return "digitize";
            when 37 => return "solutionize";
            when 38 => return "lead to";
            when 39 => return "reenergize";
            when 40 => return "restructure";
            when 41 => return "cross-pollinate";
            when 42 => return "ignite";
            when 43 => return "transgenerate";
         end case;
      end Inner;
   begin
      return Build_Plural_Verb (Inner, P);
   end Thing_Verb_Having_Thing_Complement;

   --  (thing) verb (person)

   function Thing_Verb_Having_Person_Complement (P : Plurality) return String is
      function Inner return String is
      begin
         case R16 is
            when 1 => return "motivate";
            when 2 => return "target";
            when 3 => return "enable";
            when 4 => return "drive";
            when 5 => return "synergize";
            when 6 => return "empower";
            when 7 => return "prioritize";
               --  BBC office-speak phrases
            when 8 => return "incentivise";
            when 9 => return "inspire";
               --
            when 10 => return "transfer";
            when 11 => return "promote";
            when 12 => return "influence";
            when 13 => return "strengthen";
            when 14 => return "energize";    --  (obtained by bootstrapping)
            when 15 => return "invigorate";  --  (obtained by bootstrapping)
            when 16 => return "reenergize";
         end case;
      end Inner;
   begin
      return Build_Plural_Verb (Inner, P);
   end Thing_Verb_Having_Person_Complement;

   function Person_Infinitive_Verb_And_Ending return String;

   function Person_Verb_And_Definite_Ending (P : Plurality; Infinitive : Boolean) return String is
      --  NB: this function produces an eventual definite complement
      --     after the verb, or no complement at all.
      function Inner return String is
      begin
         case R120 is
            when   1 => return "streamline the process";
            when   2 => return "address the overarching issues";
            when   3 => return "benchmark the portfolio";
            when   4 => return "manage the cycle";     -- Fad of 2004
            when   5 => return "figure out where we come from, where we are going to";
            when   6 => return "maximize the value";
            when   7 => return "execute the strategy"; -- Obsessive in 2006
            when   8 => return "think out of the box";
            when   9 => return "think differently";
            when  10 => return "think across the full value chain";
               --  BBC office-speak phrases
            when  11 => return "loop back";
            when  12 => return "conversate";
            when  13 => return "go forward together";
               --
            when  14 => return "achieve efficiencies";
            when  15 => return "deliver"; -- deliver, form without complement
                                         --  GAC 2010
            when  16 => return "stay in the mix";
            when  17 => return "stay in the zone";
            when  18 => return "evolve";
            when  19 => return "exceed expectations";
            when  20 => return "develop the plan";
            when  21 => return "develop the blue print for execution";
            when  22 => return "grow and diversify";
            when  23 => return "fuel changes";
            when  24 => return "nurture talent";
            when  25 => return "cultivate talent";
            when  26 => return "make it possible";
            when  27 => return "manage the portfolio";
            when  28 => return "align resources";
            when  29 => return "drive the business forward";
            when  30 => return "make things happen";
            when  31 => return "stay ahead";
            when  32 => return "outperform peers";
            when  33 => return "surge ahead";
            when  34 => return "manage the downside";
            when  35 => return "stay in the wings";
            when  36 => return "come to a landing";
            when  37 => return "shoot it over";
            when  38 => return "move the needle";
            when  39 => return "connect the dots";
            when  40 => return "connect the dots to the end game";
            when  41 => return "reset the benchmark";
            when  42 => return "take it offline";
            when  43 => return "peel the onion";
            when  44 => return "drill down";
            when  45 => return "get from here to here";
            when  46 => return "do things differently";
            when  47 => return "stretch the status quo";
            when  48 => return "challenge the status quo";
            when  49 => return "challenge established ideas";
            when  50 => return "increase customer satisfaction";
            when  51 => return "enable customer interaction";
            when  52 => return "manage the balance";
            when  53 => return "turn every stone";
            when  54 => return "drive revenue";
            when  55 => return "rise to the challenge";
            when  56 => return "keep it on the radar";
            when  57 => return "stay on trend";
            when  58 => return "hunt the business down";
            when  59 => return "push the envelope to the tilt";
            when  60 => return "execute on priorities";
            when  61 => return "stand out from the crowd";
            when  62 => return "make the abstract concrete";
            when  63 => return "manage the mix";
            when  64 => return "grow";
            when  65 => return "accelerate the strategy";
            when  66 => return "enhance the strength";
            when  67 => return "create long-term value";
            when  68 => return "meet the challenges";
            when  69 => return "move the progress forward";
            when  70 => return "do the right projects";
            when  71 => return "do the projects right";
            when  72 => return "do more with less";
            when  73 => return "build winning teams";     --  (obtained by bootstrapping)
            when  74 => return "deliver on commitments";  --  (obtained by bootstrapping)
            when  75 => return "execute";                 --  (obtained by bootstrapping)
            when  76 => return "deliver";                 --  (obtained by bootstrapping)
            when  77 => return "see around the corner";   --  (obtained by bootstrapping)
            when  78 => return "meet the surge";   --  (obtained by bootstrapping)
            when  79 => return "celebrate the success";  --  Souvenir of Converium...
            when  80 => return "circle back";     --  2014 Golden Flannel Awards article
            when  81 => return "action forward";  --  2014 Golden Flannel Awards article
            when  82 => return "move forward";    --  2015 Golden Flannel Awards article
            when  83 => return "take control";
            when  84 => return "be cautiously optimistic";
            when  85 => return "be committed";
            when  86 => return "evolve our culture";
            when  87 => return "leverage the benefits of our differentiation";
            when  88 => return "stretch our data bucket";  --  Guffpedia
            when  89 => return "leapfrog the competition";
            when  90 => return "call ""check-mate"" ahead of competition";
            when  91 => return "preempt competitors";  --  1996 article about Enron and others
            when  92 => return "bring our vision to reality";
            when  93 => return "create an environment where " &
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & " and " &
               Thing_Atom (Singular) & " can thrive";
            when  94 => return "seize opportunities";
            when  95 => return "create momentum";
            when  96 => return "generate company momentum";
            when  97 => return "pursue new opportunities";
            when  98 => return "increase adherence";
            when  99 => return "focus on the right things";
            when 100 => return "open the kimono";
            when 101 => return "give 110%";
            when 102 => return "take it to the next level";
            when 103 => return "boil the ocean";
            when 104 => return "close the loop";
            when 105 => return "create value";
            when 106 => return "disrupt the status quo";
            when 107 => return "be on the same page";
            when 108 => return "advance our strategy to " & Person_Infinitive_Verb_And_Ending;
            when 109 => return "focus on our " & Thing_Atom (Plural) &
                               " to " & Person_Infinitive_Verb_And_Ending;
            when 110 => return "deliver greater value for our customers";
            when 111 => return "generate new value for shareholders";
            when 112 => return "strengthen the balance sheet";
            when 113 => return "operate";  --  with or without ending
            when 114 => return "move up the power curve";
            when 115 => return "cut the dry business";
            when 116 => return "take the elevator beyond the top floor";  --  Mind your heads!
            when 117 => return "stick to the knitting";
            when 118 => return "create new business options";   --  1996 article about Enron and others
            when 119 => return "create strategic options and opportunities";  --  idem
            when 120 => return "carve a competitive position";  --  1996 article about Enron and others
         end case;
      end Inner;
   begin
      if Infinitive then
         --  In general we could (mis)use the plural as an infinitive
         --  but there are some exceptions: "be" /= "are"...
         return Inner;
      else
         return Build_Plural_Verb (Inner, P);
      end if;
   end Person_Verb_And_Definite_Ending;

   function Thing_Verb_And_Definite_Ending (P : Plurality; Infinitive : Boolean) return String is
      --  NB: this function produces an eventual definite complement
      --     after the verb, or no complement at all.
      function Inner return String is
      begin
         case R5 is
            when  1 => return "add value";
            when  2 => return "deliver maximum impact";
            when  3 => return "be on track";
            when  4 => return "deliver value";
            when  5 => return "deliver the best possible value";
         end case;
      end Inner;
   begin
      if Infinitive then
         --  In general we could (mis)use the plural as an infinitive
         --  but there are some exceptions: "be" /= "are"...
         return Inner;
      else
         return Build_Plural_Verb (Inner, P);
      end if;
   end Thing_Verb_And_Definite_Ending;

   --  Verb + Ending. Ending is a Complement or something else

   function Thing_Verb_And_Ending (P : Plurality) return String is
      Compl_Sp : constant Plurality := Random_Plural;
   begin
      case R104 is
         when 1 .. 55  =>
            return Thing_Verb_Having_Thing_Complement (P) &
              ' ' &
              Thing_With_Random_Article (Compl_Sp);
         when 56 .. 100 =>
            return Thing_Verb_Having_Person_Complement (P) &
              " the " & Person (Compl_Sp);
         when 101 .. 104 =>
            return Thing_Verb_And_Definite_Ending (P, Infinitive => False);
      end case;
   end Thing_Verb_And_Ending;

   function Person_Verb_And_Ending (P : Plurality; Infinitive : Boolean) return String is
      Compl_Sp : constant Plurality := Random_Plural;
   begin
      case R95 is
         when  1 .. 10  =>
            return Person_Verb_And_Definite_Ending (P, Infinitive);
         when 11 .. 15  => -- Fight-the-Evil situation
            return
              Person_Verb_Having_Bad_Thing_Complement (P) &
              ' ' &
              Add_Random_Article (Plural, Bad_Things);
         when 16 .. 95 =>
            return
              Person_Verb_Having_Thing_Complement (P, Infinitive) &
              ' ' &
              Thing_With_Random_Article (Compl_Sp);
      end case;
   end Person_Verb_And_Ending;

   --  "We need to..." and similar forward-looking constructions
   --
   function Faukon return String is
   begin
      case R16 is
         when 1 => return "we need to";
         when 2 => return "we've got to";
         when 3 => return "the reporting unit should";
         when 4 => return "controlling should";
         when 5 => return "we must activate the " & Matrix_Or_So & " to";
         when 6 => return "pursuing this route will enable us to";
         when 7 => return "we will go the extra mile to";
         when 8 => return "we are working hard to";
         when 9 => return "we continue to work tirelessly and diligently to";
         when 10 => return "we will execute to";
         when 11 => return "we will sharpen our business models to";
         when 12 => return "to continue our growth, we must";
         when 13 => return "we are going to";
         when 14 => return "we look forward to working together to";
         when 15 => return "in order to improve, you need to";
         when 16 => return "trending your numbers should"; -- FOSDEM 2019
      end case;
   end Faukon;

   function Person_Infinitive_Verb_And_Ending return String is
      (Person_Verb_And_Ending (Plural, Infinitive => True));

   function Proposition return String is
      Sp1 : constant Plurality := Random_Plural;
   begin
      case R116 is
         when 1 .. 5    => -- "We need to..."
            return
            Faukon & ' ' &
            Person_Infinitive_Verb_And_Ending &
            Eventual_Postfixed_Adverb;
            --  infinitive written same as present plural
         when 6 .. 50    => -- ** PERSON...
            return
              "the " & Person (Sp1) & ' ' &
              Eventual_Adverb &
              Person_Verb_And_Ending (Sp1, Infinitive => False) &
              Eventual_Postfixed_Adverb;
         when 51 .. 92   => -- ** THING...
            return
            Thing_With_Random_Article (Sp1) & ' ' &
            Eventual_Adverb &
            Thing_Verb_And_Ending (Sp1) &
            Eventual_Postfixed_Adverb;
         when 93 .. 97     => -- ** thing and thing ...
            return -- nb: no article, no adjective
            Thing_Atom (Singular) & " and " &
            Thing_Atom (Singular) & ' ' &
            Eventual_Adverb &
            Thing_Verb_And_Ending (Plural) &
            Eventual_Postfixed_Adverb;
         when 98 .. 100    => -- ** thing, thing and thing ...
            return -- nb: no article, no adjective
            Thing_Atom (Singular) & ", " &
            Thing_Atom (Singular) & " and " &
            Thing_Atom (Singular) & ' ' &
            Eventual_Adverb &
            Thing_Verb_And_Ending (Plural) &
            Eventual_Postfixed_Adverb;
         when 101 =>
            return
            "there can be no " & Growth_Atom &
            " until we can achieve " & Add_Indefinite_Article (Singular, Growth);
         when 102 =>
            return Thing (Plural) & " challenge us to " & Person_Infinitive_Verb_And_Ending;  --  (obtained by bootstrapping)
         when 103 =>
            return Thing (Singular) & " is all about " & Thing (Sp1);  --  (obtained by bootstrapping)
         when 104 =>
            return "there is no alternative to " & Thing_Atom (Sp1);  --  (obtained by bootstrapping)
         when 105 =>
            return
            "the key to " & Thing_Atom (Singular) &
            " is " & Thing_Atom (Singular);  --  (obtained by bootstrapping)
         when 106 =>
            return
            "opting out of " & Thing (Sp1) & " is not a choice";  --  (obtained by bootstrapping)
         when 107 =>
            return
            Add_Indefinite_Article (Singular, Growth) &
            " goes hand-in-hand with " &
            Add_Indefinite_Article (Singular, Growth);  --  (obtained by bootstrapping)
         when 108 =>
            return
               "the " & Person (Sp1) &
               " will be well equipped to " & Person_Infinitive_Verb_And_Ending;
         when 109 =>
            return
               Thing_Atom (Singular) & " is a matter of speed of action";
         when 110 =>
            return
               Thing_Atom (Singular) & " won't happen without " & Thing_Atom (Sp1);
         when 111 =>
            return
               Thing_With_Random_Article (Singular) &
               " will be best positioned to " & Person_Infinitive_Verb_And_Ending;
         when 112 =>
            return
               Thing_Atom (Singular) & " in the digital age calls for " & Thing_Atom (Sp1);
         when 113 =>
            return
               Thing_Atom (Singular) & " moves the company up the value chain";
         when 114 =>
            return
               Thing_Atom (Singular) & " requires that we all pull in the same direction";
         when 115 =>
            return
               Thing_Atom (Singular) & " requires truly optimizing " &
               Thing_Atom (Singular) & " to " &
               Thing_Verb_And_Definite_Ending (Plural, Infinitive => True);
         when 116 =>
            return
               "together, we " & Person_Verb_And_Ending (Plural, Infinitive => False);
      end case;
   end Proposition;

   function Articulated_Propositions return String is
   begin
      case R420 is
         when   1 .. 270 => return Proposition;
         when 271 .. 280 => return Proposition & "; this is why " & Proposition;
         when 281 .. 290 => return Proposition & "; nevertheless " & Proposition;
         when 291 .. 300 => return Proposition & ", whereas " & Proposition;
         when 311 .. 350 => return Proposition & ", while " & Proposition;
         when 351 .. 360 => return Proposition & ". In the same time, " & Proposition;
         when 361 .. 370 => return Proposition & ". As a result, " & Proposition;
         when 371 .. 380 => return Proposition & ", whilst " & Proposition;
         --  Lower probability constructs
         when 301 .. 303 => return "our gut-feeling is that " & Proposition;
         when 304 .. 306 =>
            return
               "the point is not merely to " & Person_Infinitive_Verb_And_Ending &
               ". The point is to " & Person_Infinitive_Verb_And_Ending;
         when 307 .. 310 =>
            return
               "it's not about " & Thing_Atom (Random_Plural) &
               ". It's about " & Thing_With_Random_Article (Random_Plural);
         when 381 .. 383 =>
            return
               "our challenge is not to " & Person_Infinitive_Verb_And_Ending &
               ". Our challenge is to " & Person_Infinitive_Verb_And_Ending;
         when 384 .. 386 => return "going forward, " & Proposition;  --  Also as postfix adverb
         when 387 .. 389 => return "actually, " & Proposition;  --  2015 Golden Flannel Awards
         when 390 .. 392 => return "in the future, " & Proposition;
         when 393 .. 395 => return "flat out, " & Proposition;
         when 396 .. 398 => return "first and foremost, " & Proposition;
         when 399 .. 402 =>
           return
             "the game is all about " &
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & ", and " &
               Thing_Atom (Singular) & " - not " &
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & ", and " &
               Thing_Atom (Singular);
         when 403 => return "in today's fast-changing world, " & Proposition;
         when 404 => return "internally and externally, " & Proposition;
         when 405 => return "our message is: " & Proposition;
         when 406 => return "in a data-first world, " & Proposition;
         when 407 => return "the future awaits";
         when 408 =>
           return Thing_Atom (Plural) & " not only thrive on change, they initiate it";
         when 409 =>
           return
             "as the pace of " & Thing_Atom (Random_Plural) &
             " continues to accelerate, " & Thing_Atom (Singular) &
             " has become a necessity";
         when 410 =>
            return
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & " - all are competing for the attention of " &
               Person (Plural);
         when 411 => return "success brings success";  --  Thx Marco Carenzo!
         when 412 => return "everyone is coming to grips with the fact that " & Proposition;
         when 413 =>
            return
            Thing (Plural) &
            " will be a thing of the past over the next decade" &
            " and be fully replaced with " &
            Thing (Random_Plural);
         when 414 =>
            return "as the consumer and commerce landscape continues to evolve, " & Proposition;
         when 415 =>
            return "in an age of information, " & Proposition;
         when 416 =>
            return "in a growing digital environment, " & Proposition;
         when 417 =>
            return "to remain relevant, " & Proposition;
         when 418 =>
            return "at the crossroads of " &
               Thing_Atom (Singular) & ", " &
               Thing_Atom (Singular) & " and " &
               Thing_Atom (Singular) & ", " &
               Proposition;
         when 419 =>
            return "one thing about " & Thing_Atom (Random_Plural) &
                   " is clear: " & Proposition;  --  1996 article about Enron and others
         when 420 =>
            return "the appropriate strategy for the " & Matrix_Or_So &
                   " depends on where it is today and on the state of the world down the road";
                   --  1996 article about Enron and others
      end case;
   end Articulated_Propositions;

   function Sentence return String is
      Ap : constant String := Articulated_Propositions;
   begin
      return To_Upper (Ap (Ap'First)) & Ap (Ap'First + 1 .. Ap'Last) & ". ";
   end Sentence;

   --  The total number of sentences X for each external call to the
   --  function Sentences follows a geometric distribution.
   --
   --  E(X) = 1/p, sigma(X) = (1-p) / (p^2)
   --
   function Sentences (Possible_Dialog_Mark : String) return String is
   begin
      case R100 is
         when  1 ..  33 =>  --  Recursion stops in this case. Prob = p.
            return Sentence;
         when 34 ..  80 =>
            return Sentences (Possible_Dialog_Mark) & Sentence;
         when 81 .. 100 =>
            return
               Sentences (Possible_Dialog_Mark) &
               Paragraph_End_Mark & Paragraph_Mark &
               Possible_Dialog_Mark & Sentence;
      end case;
   end Sentences;

   function Sentence_Guaranteed_Amount (Count : Positive; Possible_Dialog_Mark : String) return String is
      Element : constant String :=
        Paragraph_Mark &
        Possible_Dialog_Mark & Sentences (Possible_Dialog_Mark) &
        Paragraph_End_Mark;
   begin
      if Count > 1 then
         return
           Sentence_Guaranteed_Amount (Count - 1, Possible_Dialog_Mark) &
           Element;
      else
         return Element;
      end if;
   end Sentence_Guaranteed_Amount;

   function Workshop return String is
   begin
      return Sentence_Guaranteed_Amount (1250, Dialog_Mark);
   end Workshop;

   function Short_Workshop return String is
   begin
      return Sentence_Guaranteed_Amount (30, Dialog_Mark);
   end Short_Workshop;

   function Short_Meeting return String is
   begin
      return Sentence_Guaranteed_Amount (3, Dialog_Mark);
   end Short_Meeting;

   function Financial_Report return String is
   begin
      return Sentence_Guaranteed_Amount (20, "");
      --  !! charts (especially, pie charts) !!
   end Financial_Report;

end Corporate_Bullshit;

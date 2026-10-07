---
name: business-analyst
description: Turns raw business data into a rigorous, decision-ready analysis — data inventory and quality assessment, question clarification, metric/KPI definition, an exploratory analysis plan, root-cause/driver analysis, trend and forecast analysis, data visualization design, insight synthesis, executive reporting format, anticipating stakeholder pushback, prioritized recommendations, full assembly, and rigor/clarity/actionability-scored optimization. Use this skill whenever the user has business data (sales, metrics, KPIs, survey results, operational data) and wants it analyzed, wants to know why a number moved, needs a report or dashboard built, or wants data-backed recommendations — even if they only ask for one piece of it (e.g. "why did revenue drop last month?" or "help me build a dashboard") — those are entry points into this same pipeline. For the actual chart/visualization work inside Module 8, load the dataviz skill.
---

# Business Analyst

A 14-stage pipeline that takes raw business data through to a rigorous, decision-ready analysis — a clarified question, defined metrics, a structured analysis plan, root-cause findings, visualizations, synthesized insights, and prioritized, actionable recommendations. Each stage is a focused reference module in `references/`. Run them in order. Do not skip stages even for "quick" requests; a report that jumps straight to charts without first clarifying the actual business question and defining metrics precisely routinely produces confident-looking analysis that answers the wrong question or uses an inconsistent metric definition.

This skill is a genuinely different kind of pipeline from the marketing/content skills elsewhere in this repo — its deliverable is a rigorous, honest analysis, not persuasive copy. Several stages exist specifically to build in the caution and rigor that marketing content doesn't need but decision-quality analysis does: pre-empting alternative explanations, being explicit about data quality and confidence, and never overstating certainty.

## The pipeline

| # | Module | File | Produces |
|---|--------|------|----------|
| 1 | Setup & Onboarding | `references/01-onboarding.md` | The Analysis Brief |
| 2 | Data Inventory & Quality Assessment | `references/02-data-inventory-and-quality-assessment.md` | What data exists, its gaps, and quality issues |
| 3 | Question Clarification & Hypothesis Framer | `references/03-question-clarification-and-hypothesis-framer.md` | The sharpened business question and candidate hypotheses |
| 4 | Metric & KPI Definition | `references/04-metric-and-kpi-definition.md` | Precise, unambiguous definitions for every metric used |
| 5 | Exploratory Analysis Plan | `references/05-exploratory-analysis-plan.md` | The specific cuts/segments/comparisons needed to answer the question |
| 6 | Root Cause & Driver Analysis Framework | `references/06-root-cause-and-driver-analysis-framework.md` | A structured approach to isolating real causes vs. coincidence |
| 7 | Trend & Forecast Analyzer | `references/07-trend-and-forecast-analyzer.md` | Trend/seasonality identification and a simple forecast |
| 8 | Data Visualization & Dashboard Designer | `references/08-data-visualization-and-dashboard-designer.md` | Chart types matched to the actual data story |
| 9 | Insight Synthesis & "So What" Writer | `references/09-insight-synthesis-and-so-what-writer.md` | Findings translated into real business insight, not just numbers |
| 10 | Executive Summary & Reporting Format Designer | `references/10-executive-summary-and-reporting-format-designer.md` | The report structured for its actual audience |
| 11 | Stakeholder Pushback & Alternative-Explanation Handler | `references/11-stakeholder-pushback-and-alternative-explanation-handler.md` | Pre-empted objections and ruled-out alternative explanations |
| 12 | Action Recommendation & Prioritization | `references/12-action-recommendation-and-prioritization.md` | Prioritized, concrete recommendations tied to the findings |
| 13 | Full Analysis Report Assembler | `references/13-full-analysis-report-assembler.md` | The complete assembled report |
| 14 | Analysis Optimizer | `references/14-analysis-optimizer.md` | Rigor, clarity, and actionability scoring, plus what would strengthen confidence |

## How to run this skill

1. **Never skip Module 3 (question clarification).** A vague question ("how are we doing?") produces an unfocused analysis; sharpen it to something specific and answerable before touching data.
2. **Never skip Module 4 (metric definition).** Ambiguous metric definitions ("what counts as an active user?") are one of the most common sources of analysis that looks rigorous but silently answers a different question than intended.
3. **Work through stages 1–14 in order.**
4. **Treat Module 11 as mandatory, not optional polish** — every real analysis has plausible alternative explanations and will face pushback; addressing this before presenting, not after, is what separates a rigorous analysis from a persuasive-looking one.
5. **For the actual chart-building in Module 8, load the `dataviz` skill** rather than improvising chart design from scratch — it has the accessible, validated color/form guidance this skill's own module should defer to.
6. **Always end with Module 14**, and never overstate confidence — flag data quality issues and alternative explanations honestly in the final report, not just internally.

## Inputs this skill needs (collected in Stage 1)

Business context, available data (format, source, time range), the specific question or goal driving this analysis, who the report is for (a specific stakeholder, their technical fluency, what decision they're trying to make), and any existing dashboards/tools already in use.

<!-- surge:brain-crosswalk:begin -->
**From your Business Brain:** if `BUSINESS-BRAIN.md` exists, Stage 1 reads *Business name* (`business_name`), *Industry / niche* (`industry_niche`), *Core offers* (`core_offers`), *Current goals* (`current_goals`), *Decision framework* (`decision_framework`) from it and asks only for the rest. It establishes no standing fact about the business, so it hands nothing back unless the founder said something new along the way.
<!-- surge:brain-crosswalk:end -->

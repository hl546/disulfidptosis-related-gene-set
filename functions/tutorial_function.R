# source by "tutorial_server.R"


# tutorial ----------------------------------------------------------------

fn_tutorial <- function(){
  shiny::tagList(
    shiny::tags$h1(shiny::icon(name = "hand-o-right"), "Tutorial"),
    
    shiny::tags$h2("1. Video"),
    shiny::tags$p("Follow the video, users can have a overall understanding about what you can get from GSCALite and how to use it."),
    #shiny::tags$video(src = "./videos/video.mp4", controls = "controls", width = "100%", height = "100%"),
    
    shiny::tags$h2("2. Step by step"),
    shiny::tags$img(
      src = "./imgs/tutorial-1.png",
      class = "center-block img-responsive" ),
    shiny::tags$br(),
    
    shiny::tags$img(
      src = "./imgs/tutorial-2.png",
      class = "center-block img-responsive"),
    shiny::tags$br(),
    
    shiny::tags$img(
      src = "./imgs/tutorial-3.png",
      class = "center-block img-responsive"), 
    shiny::tags$br(),
    
    shiny::tags$hr(),
    shiny::tags$h1(shiny::icon(name = "hand-o-right"), "Figure description"),
    
    shiny::tags$h2("1. mRNA epxression"),
    shiny::tags$img(
      src = "./imgs/1.mrna_expression/tumorVSnormal.png",
      class = "center-block img-responsive" ),
    shiny::tags$p("This picture here displayed the expression ratio of gene set in the tumor-VS-normal compairson. The dot denotes FDR from multiple t-test."),
    shiny::tags$br(),
    
    shiny::tags$img(
      src = "./imgs/1.mrna_expression/FC-table.png",
      class = "center-block img-responsive"),
    shiny::tags$p("The table above indicates the detailed information for the gene set queried. User could click the arrow besides column names to change the rank. The boxes under column names help user to search target results."),
    
    shiny::tags$h2("2. SNV analysis"),
    shiny::tags$h3("2.1. SNV percentage profile"),
    shiny::tags$img(
      src = "./imgs/2.snv/percent.png",
      class = "center-block img-responsive"),
    shiny::tags$p("The number in the main picture denotes the mututaion frequency of the gene in a specific cancer type, each row represents a gene."),
    
    shiny::tags$h3("2.2. SNV summary plot"),
    shiny::tags$img(
      src = "./imgs/2.snv/summary.png",
      class = "center-block img-responsive"),
    shiny::tags$p("Summary of SNV analysis results. This picture here displays the Variant Type (SNP or DEL), Variant Classification, SNV Class, etc."),
    
    shiny::tags$h3("2.3. SNV oncoplot"),
    shiny::tags$img(
      src = "./imgs/2.snv/SNV_oncoplot.png",
      class = "center-block img-responsive" ),
    shiny::tags$p("Detailed SNV informations of the gene set in the selected TCGA cancer type."),
    
    shiny::tags$h3("2.4. SNV survival plot"),
    shiny::tags$img(
      src = "./imgs/2.snv/survival.png",
      class = "center-block img-responsive"),
    shiny::tags$p("Kaplan-Meier Survival Estimates for samples with SNV or not in selected cancer types. The null hypothesis is that the SNV did not change survival. Here, the dot with blue color indicates patientes with SNV in the correspond gene have worse survival in TCGA dataset."),
    
    shiny::tags$h2("3. CNV analysis"),
    shiny::tags$h3("3.1. CNV results in pie chart"),
    shiny::tags$img(
      src = "./imgs/3.cnv/pie.png",
      class = "center-block img-responsive" ),
    shiny::tags$p("The pie give a survey for CNV categories (heterozygous and homozygous amplification/deletion) of queried gene set in selected cancers."),
    
    shiny::tags$h3("3.2. The distribution of CNV category in selected cancer types"),
    shiny::tags$img(
      src = "./imgs/3.cnv/heteCNV.png",
      class = "center-block img-responsive"),
    shiny::tags$br(),
    
    shiny::tags$img(
      src = "./imgs/3.cnv/homoCNV.png",
      class = "center-block img-responsive"),
    shiny::tags$p("The two plots above demonstrate the somatic CNV information (gene loci locates in the region) in selected cancer types."),
    
    shiny::tags$h3("3.3. The relationship between CNV and gene expression"),      
    shiny::tags$img(
      src = "./imgs/3.cnv/corTOexpression.png",
      class = "center-block img-responsive"),
    shiny::tags$p("This plot demonstrates the relationship between CNV and gene expression. The negtive value of spearman correlation coefficence indicates the gene has a opposite expression profile with CNV."),
    
    shiny::tags$h2("4. Methylation analysis"),
    shiny::tags$h3("4.1. The methylation difference between tumor and normal samples"),
    shiny::tags$img(
      src = "./imgs/4.methy/diff_meth.png",
      class = "center-block img-responsive"),
    shiny::tags$p("This picture here displays the methylation difference between tumor and normal samples. The range of methylation value varies from 0 to 1, 0 indicates NON-methy while 1 means totally methylated loci. Here we used the average methylation level to calculated the difference bewteen tumor and normal samples. FDR was calculated after multiple t-test."),
    
    shiny::tags$h3("4.2. The relationship between gene expression and methylation"),      
    shiny::tags$img(
      src = "./imgs/4.methy/meth_exp_relation.png",
      class = "center-block img-responsive"),
    shiny::tags$p("This plot demonstrates the relationship between gene expression and methylation. The blue/red dot here indicates the gene expression is negtively/positively related to the methylation."),
    
    shiny::tags$h3("4.3. The relationship between gene methylation and patient survival"),
    shiny::tags$img(
      src = "./imgs/4.methy/meth_os.png",
      class = "center-block img-responsive"),
    shiny::tags$p("This picture displays the relationship between gene expression and patients survival. The blue/red dot here indicates the high/low methylation level of corresponse gene is related to the wrose survival of patients."),
    
    shiny::tags$h2("5. Pathway activity in cancers"),
    shiny::tags$h3("5.1. The global activity of genes in cancer related pathways."),      
    shiny::tags$img(
      src = "./imgs/5.protein/glb_percent.png",
      class = "center-block img-responsive" ),
    shiny::tags$p("This picture here displays the global activity of genes in selected cancer types. The pie of gene in corresponse pathways means the activity/inhibition/non-significant effect contribute to the pathways in specific cancer. The blank means the gene is not in the pathways."),
    
    shiny::tags$h3("5.2. The percentage of cancers in which a gene has an effect (activation or inhibition) on the pathway."),
    shiny::tags$img(
      src = "./imgs/5.protein/heatmap_percent.png",
      class = "center-block img-responsive"),
    shiny::tags$p("Red/blue color indicates genes may actived/inhibited given pathways across 32 cancers(percentage, negative number means inhibited)."), 
    
    shiny::tags$h3("5.3. The profiles in cancer related pathways across cancer types."),
    shiny::tags$img(
      src = "./imgs/5.protein/network_cancer.png",
      class = "center-block img-responsive"),
    shiny::tags$p("The link between left and middle column indicates genes  expressed in a given cancer type. And the link between middle and right column shows the gene may activated/inhibited a given pathway."),
    
    shiny::tags$h2("6. miRNA-mRNA regulation network"),
    shiny::tags$img(
      src = "./imgs/6.miRNA/D3network.png",
      class = "center-block img-responsive"),
    shiny::tags$br(),
    shiny::tags$img(
      src = "./imgs/6.miRNA/visnetwork.png",
      class = "center-block img-responsive"),
    shiny::tags$p("The pictures above displays the miRNA-mRNA regulatory network of input genes."),
    
    shiny::tags$h2("7. Gene profiles in GTEx dataset"),
    shiny::tags$h3("7.1. The gene expression profiles in selected tissues."),
    shiny::tags$img(
      src = "./imgs/9.GTEx/GTEx_expr.png",
      class = "center-block img-responsive"),
    
    shiny::tags$h3("7.2. Table of eQTL related to quried gene set in selected tissues"),
    shiny::tags$img(
      src = "./imgs/9.GTEx/GTEx_eqtl.png",
      class = "center-block img-responsive")
  )

}


# document ----------------------------------------------------------------

fn_document <- function(){

   shiny::tagList(
     shiny::tags$p(shiny::tags$a("Methods for mRNA Expression.", id = "doc_expr")),
     shiny::tags$p(shiny::tags$a("Methods for Single Nucleotide Variation.", id = "doc_snv")),
     shiny::tags$p(shiny::tags$a("Methods for Copy Number Variation.", id = "doc_cnv")),
     shiny::tags$p(shiny::tags$a("Methods for Methylation.", id = "doc_meth")),
     shiny::tags$p(shiny::tags$a("Methods for Pathway Acitivity.", id = "doc_rppa")),
     shiny::tags$p(shiny::tags$a("Methods for miRNA Network.", id = "doc_mirna")),
     shiny::tags$p(shiny::tags$a("Methods for Drug Sensitivity.", id = "doc_drug")),
     shiny::tags$p(shiny::tags$a("Methods for GTEx Expression.", id = "doc_gtex_expr")),
     shiny::tags$p(shiny::tags$a("Methods for GTEx eQTL.", id = "doc_gtex_eqtl"))
   )

}



# tutorial content --------------------------------------------------------


fn_tutorial_content <- function(){
  column(
    width = 12, offset = 0,
    
    shiny::tags$h1(
      class = "text-success text-left",
      shiny::icon(name = "angle-double-right", class = "fa-fw"),
      "Tutorial and Documentation"
    ),
    
    shiny::tags$div(
      
      # nav tabs
      shiny::tags$ul(
        class = "nav nav-tabs", role = "tablist",
        shiny::tags$li(
          role = "presentation", class = "active",
          shiny::tags$a(
            href = "#ui_tutorial", "aria-controls" = "ui_tutorial", 
            role = "tab", "data-toggle" = "tab", "Tutorial"
          )
        ),
        shiny::tags$li(
          role = "presentation",
          shiny::tags$a(
            href = "#ui_document", "aria-controls" = "ui_document", 
            role = "tab", "data-toggle" = "tab", "Document"
          )
        )
      ),
      
      # tab panes
      shiny::tags$div(
        class = "tab-content",
        shiny::tags$div(
          role = "tabpanel", class = "tab-pane active", id = "ui_tutorial",
          fn_tutorial()
        ),
        shiny::tags$div(
          role = "tabpanel", class = "tab-pane", id = "ui_document",
          fn_document()
        )
      )
    )
  )
}




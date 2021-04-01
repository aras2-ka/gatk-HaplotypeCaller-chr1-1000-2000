GATK="/sandbox/apps/bioinfo/binaries/gatk/0.0.0/gatk-0.0.0/gatk"

SAMPLES = {
"C000GEW":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GEW_HTV57CCXY_hs37d5_MERGE_PE_5.reliable.realign.recal.bam",
"C000V1C":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000V1C_HTNVNCCXY_hs37d5_MERGE_PE_8.reliable.realign.recal.bam",
"C000V19":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000V19_HTV52CCXY_hs37d5_MERGE_PE_5.reliable.realign.recal.bam",
"C000GEU":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GEU_HTNVNCCXY_hs37d5_MERGE_PE_7.reliable.realign.recal.bam",
"C000V1D":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000V1D_HTV27CCXY_hs37d5_MERGE_PE_6.reliable.realign.recal.bam",
"C000GEO":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GEO_HTVL3CCXY_hs37d5_MERGE_PE_4.reliable.realign.recal.bam",
"C000GEZ":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GEZ_HTVL3CCXY_hs37d5_MERGE_PE_5.reliable.realign.recal.bam",
"C000GES":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GES_HTV3TCCXY_hs37d5_MERGE_PE_3.reliable.realign.recal.bam",
"C000V1E":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000V1E_HTV57CCXY_hs37d5_MERGE_PE_6.reliable.realign.recal.bam",
"C000V18":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000V18_HTWHVCCXY_hs37d5_MERGE_PE_5.reliable.realign.recal.bam",
"C000GFA":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GFA_HTV3TCCXY_hs37d5_MERGE_PE_4.reliable.realign.recal.bam",
"C000GEQ":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GEQ_HWFNMCCXY_hs37d5_MERGE_PE_3.reliable.realign.recal.bam",
"C000V1B":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000V1B_HTN5MCCXY_hs37d5_MERGE_PE_7.reliable.realign.recal.bam",
"C000GF8":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GF8_HWFNMCCXY_hs37d5_MERGE_PE_4.reliable.realign.recal.bam",
"C000GER":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GER_HWFWGCCXY_hs37d5_MERGE_PE_3.reliable.realign.recal.bam",
"C000GEP":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GEP_HTV5WCCXY_hs37d5_MERGE_PE_3.reliable.realign.recal.bam",
"C000V1A":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000V1A_HTV5WCCXY_hs37d5_MERGE_PE_4.reliable.realign.recal.bam",
"C000GEV":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GEV_HTV27CCXY_hs37d5_MERGE_PE_5.reliable.realign.recal.bam",
"C000GEN":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GEN_HTV52CCXY_hs37d5_MERGE_PE_4.reliable.realign.recal.bam",
"C000GF0":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GF0_HTTG2CCXY_hs37d5_MERGE_PE_4.reliable.realign.recal.bam",
"C000V1G":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000V1G_HTV52CCXY_hs37d5_MERGE_PE_6.reliable.realign.recal.bam",
"C000V1F":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000V1F_HTWHVCCXY_hs37d5_MERGE_PE_6.reliable.realign.recal.bam",
"C000GET":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GET_HTN5MCCXY_hs37d5_MERGE_PE_6.reliable.realign.recal.bam",
"C000GF9":"/LAB-DATA/BiRD/shares/ITX/u1087/betty.gardie/20191127.cng/MALRARWGGARDIE/set1/alignements/M521_DA_C000GF9_HWFWGCCXY_hs37d5_MERGE_PE_4.reliable.realign.recal.bam"
}

print(SAMPLES.keys())

rule all:
    input: expand("/SCRATCH-BIRD/users/karastoo/calls/{sample}.g.vcf.gz", sample = SAMPLES.keys())

rule haplotype_Caller:
    input:
        bam=lambda wildcards: SAMPLES[wildcards.sample],
        ref="/LAB-DATA/BiRD/resources/species/human/cng.fr/hs37d5/hs37d5_all_chr.fasta"
    output:
        gvcf="/SCRATCH-BIRD/users/karastoo/calls/{sample}.g.vcf.gz"

    params:
        tmpdir="/SCRATCH-BIRD/users/karastoo/calls/"
    shell:	"""
    		{GATK} --java-options "-Djava.io.tmpdir={params.tmpdir} -XX:ParallelGCThreads=5 -Xmx10g" HaplotypeCaller -R {input.ref} -I {input.bam} -O {output.gvcf} -L 'chr1:1000-2000' -ERC GVCF 2> /SCRATCH-BIRD/users/karastoo/calls/{wildcards.sample}.gvcf.err
    		"""

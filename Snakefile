SAMPLES = {
"C000GEN":"/home/karastoo/SCRATCH/bam/M521_DA_C000GEN_HTV52CCXY_hs37d5_MERGE_PE_4.reliable.realign.recal.bam",
"C000GEO":"/home/karastoo/SCRATCH/bam/M521_DA_C000GEO_HTVL3CCXY_hs37d5_MERGE_PE_4.reliable.realign.recal.bam"
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
    		gatk --java-options "-Djava.io.tmpdir={params.tmpdir} -XX:ParallelGCThreads=5 -Xmx10g" HaplotypeCaller -R {input.ref} -I {input.bam} -O {output.gvcf} -L chr:1000-2000 -ERC GVCF
    		"""

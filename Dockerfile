
FROM continuumio/miniconda3:4.10.3p0-alpine

COPY regrid_restart_file.py /regrid_restart_file.py

RUN /opt/conda/bin/conda install -c conda-forge geoschem-gcpy xarray==0.17.0 numpy netcdf4 requests gridspec sparselt ESMF \
&&  /opt/conda/bin/conda clean -afy


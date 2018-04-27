FROM centos:7.4.1708

COPY ./.vimrc /root/
COPY ./.bashrc /root/
RUN yum install -y epel-release \
    && yum install -y vim \
    && yum install -y git \
    && yum install -y gcc gcc-c++ gdb make \
    && yum install -y python-devel \
    && yum install -y cmake3 \
    && yum install -y wget \
    && yum install -y bzip2-devel \
    && yum install -y gtest-devel \
    && yum clean all \
    && mkdir /tmp/boost && cd /tmp/boost \
    && wget http://sourceforge.net/projects/boost/files/boost/1.58.0/boost_1_58_0.tar.gz \
    && tar -xvf ./boost_1_58_0.tar.gz \
    && cd boost_1_58_0 \
    && ./bootstrap.sh --prefix=/usr/ --without-libraries=coroutine,exception,test,wave \
    && ./b2 -j$(nproc) variant=release threading=multi install \
    && cd /tmp && rm -rf /tmp/boost \
    && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
    && vim +PluginInstall +qall \
    && mkdir /root/external && cd /root/external \
    && git clone --recursive https://github.com/yyTheTuna/flatbuffers.git \
    && cd flatbuffers && cmake3 . && make && make install \
    && cp ./flatc /usr/bin/ \
    && cd
CMD ["/bin/bash"]

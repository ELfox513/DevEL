.class public Lcom/android/dx/command/dexer/Main$Arguments;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/command/dexer/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;
    }
.end annotation


# static fields
.field private static final INCREMENTAL_OPTION:Ljava/lang/String; = "--incremental"

.field private static final INPUT_LIST_OPTION:Ljava/lang/String; = "--input-list"

.field private static final MAIN_DEX_LIST_OPTION:Ljava/lang/String; = "--main-dex-list"

.field private static final MINIMAL_MAIN_DEX_OPTION:Ljava/lang/String; = "--minimal-main-dex"

.field private static final MULTI_DEX_OPTION:Ljava/lang/String; = "--multi-dex"

.field private static final NUM_THREADS_OPTION:Ljava/lang/String; = "--num-threads"


# instance fields
.field public allowAllInterfaceMethodInvokes:Z

.field public cfOptions:Lcom/android/dx/dex/cf/CfOptions;

.field public final context:Lcom/android/dx/command/dexer/DxContext;

.field public coreLibrary:Z

.field public debug:Z

.field public dexOptions:Lcom/android/dx/dex/DexOptions;

.field public dontOptimizeListFile:Ljava/lang/String;

.field public dumpWidth:I

.field public emptyOk:Z

.field public fileNames:[Ljava/lang/String;

.field public forceJumbo:Z

.field public humanOutName:Ljava/lang/String;

.field public incremental:Z

.field private inputList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jarOutput:Z

.field public keepClassesInJar:Z

.field public localInfo:Z

.field public mainDexListFile:Ljava/lang/String;

.field public maxNumberOfIdxPerDex:I

.field public methodToDump:Ljava/lang/String;

.field public minSdkVersion:I

.field public minimalMainDex:Z

.field public multiDex:Z

.field public numThreads:I

.field public optimize:Z

.field public optimizeListFile:Ljava/lang/String;

.field public outName:Ljava/lang/String;

.field private outputIsDirectDex:Z

.field private outputIsDirectory:Z

.field public positionInfo:I

.field public statistics:Z

.field public strictNameCheck:Z

.field public verbose:Z

.field public verboseDump:Z

.field public warnings:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/dx/command/dexer/DxContext;

    invoke-direct {v0}, Lcom/android/dx/command/dexer/DxContext;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$Arguments;-><init>(Lcom/android/dx/command/dexer/DxContext;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/dx/command/dexer/DxContext;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->debug:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->warnings:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verbose:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    const/16 v3, 0xd

    iput v3, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->incremental:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->numThreads:I

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    const/high16 v1, 0x10000

    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    iput-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    iput-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    return-void
.end method

.method public static synthetic a(Lcom/android/dx/command/dexer/Main$Arguments;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/dx/command/dexer/Main$Arguments;->parse([Ljava/lang/String;)V

    return-void
.end method

.method private parse([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    invoke-direct {v0, p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$Arguments;->parseFlags(Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V

    invoke-virtual {v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getRemaining()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->fileNames:[Ljava/lang/String;

    array-length p1, p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "no input files specified"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_2
    iget-boolean p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->out:Ljava/io/PrintStream;

    const-string v0, "ignoring input files"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p1, "-"

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "--main-dex-list is only supported in combination with --multi-dex"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "--minimal-main-dex is only supported in combination with --multi-dex and --main-dex-list"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_8
    :goto_2
    iget-boolean p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    if-eqz p1, :cond_a

    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->incremental:Z

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    const-string v0, "--incremental is not supported with --multi-dex"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_a
    :goto_3
    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported output \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--multi-dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " supports only archive or directory output"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_c
    :goto_4
    iget-boolean v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    if-eqz v0, :cond_d

    if-nez p1, :cond_d

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v1, "classes.dex"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    :cond_d
    invoke-virtual {p0}, Lcom/android/dx/command/dexer/Main$Arguments;->makeOptionsObjects()V

    return-void
.end method

.method private parseFlags(Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V
    .locals 4

    :goto_0
    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getNext()Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "--debug"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->debug:Z

    goto :goto_0

    :cond_0
    const-string v0, "--no-warning"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->warnings:Z

    goto :goto_0

    :cond_1
    const-string v0, "--verbose"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verbose:Z

    goto :goto_0

    :cond_2
    const-string v0, "--verbose-dump"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->verboseDump:Z

    goto :goto_0

    :cond_3
    const-string v0, "--no-files"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->emptyOk:Z

    goto :goto_0

    :cond_4
    const-string v0, "--no-optimize"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    goto :goto_0

    :cond_5
    const-string v0, "--no-strict"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    goto :goto_0

    :cond_6
    const-string v0, "--core-library"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->coreLibrary:Z

    goto :goto_0

    :cond_7
    const-string v0, "--statistics"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->statistics:Z

    goto :goto_0

    :cond_8
    const-string v0, "--optimize-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "--optimize-list and --no-optimize-list are incompatible."

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_a
    const-string v0, "--no-optimize-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    if-nez v0, :cond_b

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_c
    const-string v0, "--keep-classes"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->keepClassesInJar:Z

    goto/16 :goto_0

    :cond_d
    const-string v0, "--output="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectory:Z

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-static {v0}, Ll1/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v3, ".dex"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_1

    :cond_10
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown output extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_11
    :goto_1
    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->outputIsDirectDex:Z

    goto/16 :goto_0

    :cond_12
    const-string v0, "--dump-to="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->humanOutName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    const-string v0, "--dump-width="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dumpWidth:I

    goto/16 :goto_0

    :cond_14
    const-string v0, "--dump-method="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->methodToDump:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->jarOutput:Z

    goto/16 :goto_0

    :cond_15
    const-string v0, "--positions="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v2, "none"

    if-ne v0, v2, :cond_16

    iput v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_0

    :cond_16
    const-string v1, "important"

    if-ne v0, v1, :cond_17

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_0

    :cond_17
    const-string v1, "lines"

    if-ne v0, v1, :cond_18

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    goto/16 :goto_0

    :cond_18
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown positions option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_19
    const-string v0, "--no-locals"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iput-boolean v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    goto/16 :goto_0

    :cond_1a
    const-string v0, "--num-threads="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->numThreads:I

    goto/16 :goto_0

    :cond_1b
    const-string v0, "--incremental"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->incremental:Z

    goto/16 :goto_0

    :cond_1c
    const-string v0, "--force-jumbo"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    goto/16 :goto_0

    :cond_1d
    const-string v0, "--multi-dex"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->multiDex:Z

    goto/16 :goto_0

    :cond_1e
    const-string v0, "--main-dex-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->mainDexListFile:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1f
    const-string v0, "--minimal-main-dex"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minimalMainDex:Z

    goto/16 :goto_0

    :cond_20
    const-string v0, "--set-max-idx-number="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->maxNumberOfIdxPerDex:I

    goto/16 :goto_0

    :cond_21
    const-string v0, "--input-list="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->inputList:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/dx/command/dexer/Main;->b(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    iget-object p1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object p1, p1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read input list file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_22
    const-string v0, "--min-sdk-version="

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getLastValue()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/4 v2, -0x1

    :goto_2
    if-lt v2, v1, :cond_23

    iput v2, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    goto/16 :goto_0

    :cond_23
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "improper min-sdk-version option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_24
    const-string v0, "--allow-all-interface-method-invokes"

    invoke-virtual {p1, v0}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->isArg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iput-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    goto/16 :goto_0

    :cond_25
    iget-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v0, v0, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;->getCurrent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p1, Lr1/a;

    invoke-direct {p1}, Lr1/a;-><init>()V

    throw p1

    :cond_26
    return-void
.end method


# virtual methods
.method public makeOptionsObjects()V
    .locals 2

    new-instance v0, Lcom/android/dx/dex/cf/CfOptions;

    invoke-direct {v0}, Lcom/android/dx/dex/cf/CfOptions;-><init>()V

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->cfOptions:Lcom/android/dx/dex/cf/CfOptions;

    iget v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->positionInfo:I

    iput v1, v0, Lcom/android/dx/dex/cf/CfOptions;->positionInfo:I

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->localInfo:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->localInfo:Z

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->strictNameCheck:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->strictNameCheck:Z

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimize:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->optimize:Z

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->optimizeListFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->optimizeListFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dontOptimizeListFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->dontOptimizeListFile:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->statistics:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/cf/CfOptions;->statistics:Z

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->warnings:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->a:Ljava/io/PrintStream;

    iput-object v1, v0, Lcom/android/dx/dex/cf/CfOptions;->warn:Ljava/io/PrintStream;

    :goto_0
    new-instance v0, Lcom/android/dx/dex/DexOptions;

    iget-object v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->context:Lcom/android/dx/command/dexer/DxContext;

    iget-object v1, v1, Lcom/android/dx/command/dexer/DxContext;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lcom/android/dx/dex/DexOptions;-><init>(Ljava/io/PrintStream;)V

    iput-object v0, p0, Lcom/android/dx/command/dexer/Main$Arguments;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->minSdkVersion:I

    iput v1, v0, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->forceJumbo:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/DexOptions;->forceJumbo:Z

    iget-boolean v1, p0, Lcom/android/dx/command/dexer/Main$Arguments;->allowAllInterfaceMethodInvokes:Z

    iput-boolean v1, v0, Lcom/android/dx/dex/DexOptions;->allowAllInterfaceMethodInvokes:Z

    return-void
.end method

.method public parseFlags([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;

    invoke-direct {v0, p1}, Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/dx/command/dexer/Main$Arguments;->parseFlags(Lcom/android/dx/command/dexer/Main$Arguments$ArgumentsParser;)V

    return-void
.end method

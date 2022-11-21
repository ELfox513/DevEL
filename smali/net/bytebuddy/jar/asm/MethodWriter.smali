.class final Lnet/bytebuddy/jar/asm/MethodWriter;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "SourceFile"


# static fields
.field private static final NA:I

.field private static final STACK_SIZE_DELTA:[I


# instance fields
.field private final accessFlags:I

.field private final code:Lnet/bytebuddy/jar/asm/ByteVector;

.field private final compute:I

.field private currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

.field private currentFrame:[I

.field private currentLocals:I

.field private defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

.field private final descriptor:Ljava/lang/String;

.field private final descriptorIndex:I

.field private final exceptionIndexTable:[I

.field private firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

.field private firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private firstHandler:Lnet/bytebuddy/jar/asm/Handler;

.field private hasAsmInstructions:Z

.field private hasSubroutines:Z

.field private invisibleAnnotableParameterCount:I

.field private lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

.field private lastBytecodeOffset:I

.field private lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastHandler:Lnet/bytebuddy/jar/asm/Handler;

.field private lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

.field private lineNumberTableLength:I

.field private localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

.field private localVariableTableLength:I

.field private localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

.field private localVariableTypeTableLength:I

.field private maxLocals:I

.field private maxRelativeStackSize:I

.field private maxStack:I

.field private final name:Ljava/lang/String;

.field private final nameIndex:I

.field private final numberOfExceptions:I

.field private parameters:Lnet/bytebuddy/jar/asm/ByteVector;

.field private parametersCount:I

.field private previousFrame:[I

.field private previousFrameOffset:I

.field private relativeStackSize:I

.field private final signatureIndex:I

.field private sourceLength:I

.field private sourceOffset:I

.field private stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

.field private stackMapTableNumberOfEntries:I

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

.field private visibleAnnotableParameterCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xca

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x0
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3
        -0x4
        -0x3
        -0x4
        -0x3
        -0x3
        -0x3
        -0x3
        -0x1
        -0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x0
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        0x0
        0x1
        0x0
        0x1
        -0x1
        -0x1
        0x0
        0x0
        0x1
        0x1
        -0x1
        0x0
        -0x1
        0x0
        0x0
        0x0
        -0x3
        -0x1
        -0x1
        -0x3
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        0x0
        0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(I)V

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->nameIndex:I

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->name:Ljava/lang/String;

    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptorIndex:I

    iput-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    const/4 p3, 0x0

    if-nez p5, :cond_1

    const/4 p5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p5

    :goto_1
    iput p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    if-eqz p6, :cond_2

    array-length p5, p6

    if-lez p5, :cond_2

    array-length p5, p6

    iput p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    new-array p5, p5, [I

    iput-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    :goto_2
    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-ge p3, p5, :cond_3

    iget-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    aget-object v0, p6, p3

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    aput v0, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    :cond_3
    iput p7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz p7, :cond_5

    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, -0x1

    :cond_4
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_5
    return-void
.end method

.method private addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    new-instance v1, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v1, v0, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    return-void
.end method

.method private computeAllFrames()V
    .locals 11

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    :goto_0
    const-string v1, "java/lang/Throwable"

    if-eqz v0, :cond_2

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Handler;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-static {v2, v1}, Lnet/bytebuddy/jar/asm/Frame;->e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Label;->d()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v2

    iget-short v3, v2, Lnet/bytebuddy/jar/asm/Label;->a:S

    or-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    iput-short v3, v2, Lnet/bytebuddy/jar/asm/Label;->a:S

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Label;->d()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v3

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Label;->d()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v4

    :goto_2
    if-eq v3, v4, :cond_1

    new-instance v5, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v6, v3, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v5, v1, v2, v6}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v5, v3, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lnet/bytebuddy/jar/asm/Frame;->j(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V

    invoke-virtual {v0, p0}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    sget-object v2, Lnet/bytebuddy/jar/asm/Label;->k:Lnet/bytebuddy/jar/asm/Label;

    iput-object v2, v0, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Label;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    sget-object v4, Lnet/bytebuddy/jar/asm/Label;->k:Lnet/bytebuddy/jar/asm/Label;

    if-eq v0, v4, :cond_6

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Label;

    const/4 v5, 0x0

    iput-object v5, v0, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Label;

    iget-short v5, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    or-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    iput-short v5, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/Frame;->f()I

    move-result v5

    iget-short v6, v0, Lnet/bytebuddy/jar/asm/Label;->e:S

    add-int/2addr v5, v6

    if-le v5, v3, :cond_3

    move v3, v5

    :cond_3
    iget-object v5, v0, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    :goto_4
    if-eqz v5, :cond_5

    iget-object v6, v5, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/Label;->d()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v6

    iget-object v7, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v9, v6, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget v10, v5, Lnet/bytebuddy/jar/asm/Edge;->a:I

    invoke-virtual {v7, v8, v9, v10}, Lnet/bytebuddy/jar/asm/Frame;->g(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/Frame;I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v6, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Label;

    if-nez v7, :cond_4

    iput-object v4, v6, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Label;

    move-object v4, v6

    :cond_4
    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    goto :goto_4

    :cond_5
    move-object v0, v4

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :goto_5
    if-eqz v0, :cond_b

    iget-short v4, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    const/16 v5, 0xa

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v4, p0}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    :cond_7
    iget-short v4, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_a

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Label;

    iget v5, v0, Lnet/bytebuddy/jar/asm/Label;->b:I

    if-nez v4, :cond_8

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v6, v6, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    goto :goto_6

    :cond_8
    iget v6, v4, Lnet/bytebuddy/jar/asm/Label;->b:I

    :goto_6
    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_a

    move v8, v5

    :goto_7
    if-ge v8, v6, :cond_9

    iget-object v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v9, v9, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    aput-byte v2, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    const/16 v9, -0x41

    aput-byte v9, v8, v6

    invoke-virtual {p0, v5, v2, v7}, Lnet/bytebuddy/jar/asm/MethodWriter;->j(III)I

    move-result v5

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-static {v8, v1}, Lnet/bytebuddy/jar/asm/Frame;->e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v5

    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->i()V

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v5, v0, v4}, Lnet/bytebuddy/jar/asm/Handler;->d(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Handler;

    move-result-object v4

    iput-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_a
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_5

    :cond_b
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    return-void
.end method

.method private computeMaxStackAndLocal()V
    .locals 8

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    :goto_0
    const v1, 0x7fffffff

    if-eqz v0, :cond_2

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Handler;->c:Lnet/bytebuddy/jar/asm/Label;

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/Handler;->a:Lnet/bytebuddy/jar/asm/Label;

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Handler;->b:Lnet/bytebuddy/jar/asm/Label;

    :goto_1
    if-eq v3, v4, :cond_1

    iget-short v5, v3, Lnet/bytebuddy/jar/asm/Label;->a:S

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_0

    new-instance v5, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v6, v3, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v5, v1, v2, v6}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v5, v3, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    goto :goto_2

    :cond_0
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    new-instance v6, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v7, v5, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v6, v1, v2, v7}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v6, v5, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    :goto_2
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasSubroutines:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/Label;->e(S)V

    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_3
    if-gt v0, v3, :cond_5

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :goto_4
    if-eqz v4, :cond_4

    iget-short v5, v4, Lnet/bytebuddy/jar/asm/Label;->a:S

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    iget-short v5, v4, Lnet/bytebuddy/jar/asm/Label;->f:S

    if-ne v5, v0, :cond_3

    iget-object v5, v4, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    iget-short v6, v5, Lnet/bytebuddy/jar/asm/Label;->f:S

    if-nez v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    invoke-virtual {v5, v3}, Lnet/bytebuddy/jar/asm/Label;->e(S)V

    :cond_3
    iget-object v4, v4, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :goto_5
    if-eqz v0, :cond_7

    iget-short v3, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v3, v0}, Lnet/bytebuddy/jar/asm/Label;->c(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_6
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    sget-object v3, Lnet/bytebuddy/jar/asm/Label;->k:Lnet/bytebuddy/jar/asm/Label;

    iput-object v3, v0, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Label;

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    :cond_8
    sget-object v4, Lnet/bytebuddy/jar/asm/Label;->k:Lnet/bytebuddy/jar/asm/Label;

    if-eq v0, v4, :cond_d

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Label;

    iget-short v5, v0, Lnet/bytebuddy/jar/asm/Label;->c:S

    iget-short v6, v0, Lnet/bytebuddy/jar/asm/Label;->e:S

    add-int/2addr v6, v5

    if-le v6, v3, :cond_9

    move v3, v6

    :cond_9
    iget-object v6, v0, Lnet/bytebuddy/jar/asm/Label;->i:Lnet/bytebuddy/jar/asm/Edge;

    iget-short v0, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    iget-object v6, v6, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    :cond_a
    move-object v0, v4

    :goto_6
    if-eqz v6, :cond_8

    iget-object v4, v6, Lnet/bytebuddy/jar/asm/Edge;->b:Lnet/bytebuddy/jar/asm/Label;

    iget-object v7, v4, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Label;

    if-nez v7, :cond_c

    iget v7, v6, Lnet/bytebuddy/jar/asm/Edge;->a:I

    if-ne v7, v1, :cond_b

    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    add-int/2addr v7, v5

    :goto_7
    int-to-short v7, v7

    iput-short v7, v4, Lnet/bytebuddy/jar/asm/Label;->c:S

    iput-object v0, v4, Lnet/bytebuddy/jar/asm/Label;->j:Lnet/bytebuddy/jar/asm/Label;

    move-object v0, v4

    :cond_c
    iget-object v6, v6, Lnet/bytebuddy/jar/asm/Edge;->c:Lnet/bytebuddy/jar/asm/Edge;

    goto :goto_6

    :cond_d
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    return-void
.end method

.method private endCurrentBasicBlockWithNoSuccessor()V
    .locals 4

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    new-instance v2, Lnet/bytebuddy/jar/asm/Frame;

    invoke-direct {v2, v0}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iput-object v2, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v2, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v0, v3, v2}, Lnet/bytebuddy/jar/asm/Label;->g([BI)Z

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput-object v0, v2, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Label;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v2, v2

    iput-short v2, v0, Lnet/bytebuddy/jar/asm/Label;->e:S

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :cond_1
    :goto_0
    return-void
.end method

.method private putAbstractTypes(II)V
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v1, v1, p1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-static {v0, v1, v2}, Lnet/bytebuddy/jar/asm/Frame;->h(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/ByteVector;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private putFrame()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x2

    aget v1, v1, v4

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->z()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/16 v7, 0x32

    if-ge v4, v7, :cond_0

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v4, v4, v5

    invoke-virtual {v2, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v3, v6

    invoke-direct {v0, v6, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v1, v3

    invoke-direct {v0, v3, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    return-void

    :cond_0
    iget v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-nez v4, :cond_1

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v4, v4, v5

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v4, v4, v5

    iget-object v7, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    aget v7, v7, v5

    sub-int/2addr v4, v7

    sub-int/2addr v4, v2

    :goto_0
    iget-object v7, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    aget v7, v7, v2

    sub-int v8, v3, v7

    const/16 v9, 0xfc

    const/16 v10, 0xf8

    const/16 v11, 0xf7

    const/16 v12, 0x40

    const/16 v13, 0xff

    const/16 v14, 0xfb

    if-nez v1, :cond_3

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v2, 0xfc

    goto :goto_2

    :pswitch_1
    if-ge v4, v12, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/16 v2, 0xfb

    goto :goto_2

    :pswitch_2
    const/16 v2, 0xf8

    goto :goto_2

    :cond_3
    if-nez v8, :cond_5

    if-ne v1, v2, :cond_5

    const/16 v2, 0x3f

    if-ge v4, v2, :cond_4

    const/16 v2, 0x40

    goto :goto_2

    :cond_4
    const/16 v2, 0xf7

    goto :goto_2

    :cond_5
    :goto_1
    const/16 v2, 0xff

    :goto_2
    if-eq v2, v13, :cond_7

    const/4 v15, 0x3

    :goto_3
    if-ge v5, v7, :cond_7

    if-ge v5, v3, :cond_7

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v6, v6, v15

    iget-object v13, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    aget v13, v13, v15

    if-eq v6, v13, :cond_6

    const/16 v2, 0xff

    goto :goto_4

    :cond_6
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    const/16 v13, 0xff

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v2, :cond_d

    if-eq v2, v12, :cond_c

    if-eq v2, v11, :cond_b

    if-eq v2, v10, :cond_a

    if-eq v2, v14, :cond_9

    if-eq v2, v9, :cond_8

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v2, 0x3

    add-int/2addr v3, v2

    invoke-direct {v0, v2, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v1, v3

    invoke-direct {v0, v3, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x3

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v8, v14

    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v7, v2

    add-int/2addr v3, v2

    invoke-direct {v0, v7, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v14}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v8, v14

    invoke-virtual {v1, v8}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_5

    :cond_b
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v11}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v1, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    :cond_c
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v4, v12

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v1, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    :cond_d
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private putFrameType(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lnet/bytebuddy/jar/asm/Label;

    iget p1, p1, Lnet/bytebuddy/jar/asm/Label;->b:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    return-void
.end method

.method private visitSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_2

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    const/16 v1, 0xab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    invoke-direct {p0, v3, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Label;->d()Lnet/bytebuddy/jar/asm/Label;

    move-result-object p1

    iget-short v0, p1, Lnet/bytebuddy/jar/asm/Label;->a:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p1, Lnet/bytebuddy/jar/asm/Label;->a:S

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    invoke-direct {p0, v3, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/Label;->d()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v1

    iget-short v2, v1, Lnet/bytebuddy/jar/asm/Label;->a:S

    or-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, v1, Lnet/bytebuddy/jar/asm/Label;->a:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    array-length p1, p2

    :goto_1
    if-ge v3, p1, :cond_1

    aget-object v0, p2, v3

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v1, v0}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lnet/bytebuddy/jar/asm/ClassReader;ZZIII)Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->A()Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptorIndex:I

    if-ne p4, v0, :cond_7

    iget p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    if-ne p5, p4, :cond_7

    iget p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    const/high16 p5, 0x20000

    and-int/2addr p4, p5

    const/4 p5, 0x1

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eq p3, p4, :cond_1

    goto :goto_3

    :cond_1
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->z()I

    move-result p3

    const/16 p4, 0x31

    if-ge p3, p4, :cond_2

    iget p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    and-int/lit16 p3, p3, 0x1000

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    if-eq p2, p3, :cond_3

    return v1

    :cond_3
    if-nez p6, :cond_4

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-eqz p1, :cond_6

    return v1

    :cond_4
    invoke-virtual {p1, p6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    iget p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-ne p2, p3, :cond_6

    add-int/lit8 p6, p6, 0x2

    const/4 p2, 0x0

    :goto_2
    iget p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-ge p2, p3, :cond_6

    invoke-virtual {p1, p6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result p3

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    aget p4, p4, p2

    if-eq p3, p4, :cond_5

    return v1

    :cond_5
    add-int/lit8 p6, p6, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return p5

    :cond_7
    :goto_3
    return v1
.end method

.method public final b(Lnet/bytebuddy/jar/asm/Attribute$Set;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->a(Lnet/bytebuddy/jar/asm/Attribute;)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->a(Lnet/bytebuddy/jar/asm/Attribute;)V

    return-void
.end method

.method public c()I
    .locals 9

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceLength:I

    add-int/lit8 v0, v0, 0x6

    return v0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    const/16 v1, 0x8

    if-lez v0, :cond_a

    const v2, 0xffff

    if-gt v0, v2, :cond_9

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v0, v0, 0x10

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v2}, Lnet/bytebuddy/jar/asm/Handler;->b(Lnet/bytebuddy/jar/asm/Handler;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->z()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    if-eqz v2, :cond_2

    const-string v2, "StackMapTable"

    goto :goto_1

    :cond_2
    const-string v2, "StackMap"

    :goto_1
    invoke-virtual {v3, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "LineNumberTable"

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "LocalVariableTable"

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "LocalVariableTypeTable"

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_7

    const-string v3, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_8

    const-string v3, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v2, :cond_b

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v5, v4, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v6, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/Attribute;->c(Lnet/bytebuddy/jar/asm/SymbolTable;[BIII)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    :cond_9
    new-instance v0, Lnet/bytebuddy/jar/asm/MethodTooLargeException;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->w()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->name:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/MethodTooLargeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_a
    const/16 v0, 0x8

    :cond_b
    :goto_2
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-lez v2, :cond_c

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "Exceptions"

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    :cond_c
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    invoke-static {v1, v2, v3}, Lnet/bytebuddy/jar/asm/Attribute;->b(Lnet/bytebuddy/jar/asm/SymbolTable;II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->b(Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_e

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v2, :cond_d

    array-length v2, v1

    :cond_d
    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-static {v3, v1, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->c(Ljava/lang/String;[Lnet/bytebuddy/jar/asm/AnnotationWriter;I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_10

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v2, :cond_f

    array-length v2, v1

    :cond_f
    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-static {v3, v1, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->c(Ljava/lang/String;[Lnet/bytebuddy/jar/asm/AnnotationWriter;I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    :cond_11
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "MethodParameters"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/Attribute;->a(Lnet/bytebuddy/jar/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 13

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->z()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x31

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v3, 0x1000

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->nameIndex:I

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptorIndex:I

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    if-eqz v3, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->A()Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v0

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/ClassReader;->a:[B

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceLength:I

    invoke-virtual {p1, v0, v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void

    :cond_2
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-lez v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    and-int/lit16 v5, v4, 0x1000

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    if-eqz v0, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    const/high16 v0, 0x20000

    and-int/2addr v0, v4

    if-eqz v0, :cond_7

    add-int/lit8 v3, v3, 0x1

    :cond_7
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_8

    add-int/lit8 v3, v3, 0x1

    :cond_8
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_9

    add-int/lit8 v3, v3, 0x1

    :cond_9
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_a

    add-int/lit8 v3, v3, 0x1

    :cond_a
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_b

    add-int/lit8 v3, v3, 0x1

    :cond_b
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_c

    add-int/lit8 v3, v3, 0x1

    :cond_c
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_d

    add-int/lit8 v3, v3, 0x1

    :cond_d
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_e

    add-int/lit8 v3, v3, 0x1

    :cond_e
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_f

    add-int/lit8 v3, v3, 0x1

    :cond_f
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Attribute;->d()I

    move-result v0

    add-int/2addr v3, v0

    :cond_10
    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    if-lez v0, :cond_20

    add-int/lit8 v0, v0, 0xa

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Handler;->b(Lnet/bytebuddy/jar/asm/Handler;)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v3, :cond_11

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    const/4 v3, 0x1

    goto :goto_3

    :cond_11
    const/4 v3, 0x0

    :goto_3
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v4, :cond_12

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_12
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v4, :cond_13

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_13
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v4, :cond_14

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_14
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    const-string v5, "RuntimeVisibleTypeAnnotations"

    if-eqz v4, :cond_15

    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_15
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    const-string v6, "RuntimeInvisibleTypeAnnotations"

    if-eqz v4, :cond_16

    invoke-virtual {v4, v6}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    :cond_16
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v7, :cond_17

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v9, v4, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v10, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget v11, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v12, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    invoke-virtual/range {v7 .. v12}, Lnet/bytebuddy/jar/asm/Attribute;->c(Lnet/bytebuddy/jar/asm/SymbolTable;[BIII)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Attribute;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_17
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v7, "Code"

    invoke-virtual {v4, v7}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v4

    invoke-virtual {v4, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    invoke-virtual {v0, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v0, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v0, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v7, v4, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v0, v7, v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v0, p1}, Lnet/bytebuddy/jar/asm/Handler;->c(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/ByteVector;)V

    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->z()I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_18

    const/4 v0, 0x1

    goto :goto_4

    :cond_18
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    if-eqz v0, :cond_19

    const-string v0, "StackMapTable"

    goto :goto_5

    :cond_19
    const-string v0, "StackMap"

    :goto_5
    invoke-virtual {v3, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, v3, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v0, v4, v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1a
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "LineNumberTable"

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTableLength:I

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, v3, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v0, v4, v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1b
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "LocalVariableTable"

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTableLength:I

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, v3, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v0, v4, v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1c
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "LocalVariableTypeTable"

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTableLength:I

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, v3, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v0, v4, v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1d
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_1e

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v3, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->f(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_1e
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_1f

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v3, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->f(ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_1f
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v4, :cond_20

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v7, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    move-object v10, p1

    invoke-virtual/range {v4 .. v10}, Lnet/bytebuddy/jar/asm/Attribute;->g(Lnet/bytebuddy/jar/asm/SymbolTable;[BIIILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_20
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-lez v0, :cond_21

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "Exceptions"

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_21

    aget v5, v0, v4

    invoke-virtual {p1, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_21
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    invoke-static {v0, v3, v4, p1}, Lnet/bytebuddy/jar/asm/Attribute;->e(Lnet/bytebuddy/jar/asm/SymbolTable;IILnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->g(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v4, :cond_22

    array-length v4, v3

    :cond_22
    invoke-static {v0, v3, v4, p1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->h(I[Lnet/bytebuddy/jar/asm/AnnotationWriter;ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_23
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v4, :cond_24

    array-length v4, v3

    :cond_24
    invoke-static {v0, v3, v4, p1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->h(I[Lnet/bytebuddy/jar/asm/AnnotationWriter;ILnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_25
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "AnnotationDefault"

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v4, v3, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v0, v4, v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_26
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v3, "MethodParameters"

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parametersCount:I

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v2, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {v0, v3, v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_27
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/Attribute;->f(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V

    :cond_28
    return-void
.end method

.method public g(II)V
    .locals 0

    add-int/lit8 p1, p1, 0x6

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    add-int/lit8 p2, p2, -0x6

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceLength:I

    return-void
.end method

.method public h(II)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aput p2, v0, p1

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrame()V

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    return-void
.end method

.method public j(III)I
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    const/4 p1, 0x3

    return p1
.end method

.method public visitAnnotableParameterCount(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->visibleAnnotableParameterCount:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    :goto_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    :cond_0
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p2, p1, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    new-instance v1, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    return-object v1
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1

    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->a:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    :goto_0
    return-void
.end method

.method public visitCode()V
    .locals 0

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, p2, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {p3, p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz p3, :cond_a

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 p3, 0x1

    const/4 p4, -0x2

    const/16 v0, 0x4a

    const/16 v1, 0x44

    packed-switch p1, :pswitch_data_0

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_7

    if-ne p2, v0, :cond_4

    goto :goto_1

    :pswitch_0
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    add-int/2addr p1, v2

    goto :goto_2

    :pswitch_1
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p4, -0x1

    :cond_4
    :goto_0
    add-int/2addr p1, p4

    goto :goto_2

    :pswitch_2
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_5

    if-ne p2, v0, :cond_6

    :cond_5
    const/4 p3, 0x2

    :cond_6
    add-int/2addr p1, p3

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p4, -0x3

    goto :goto_0

    :goto_2
    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_8

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_8
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_4

    :cond_9
    :goto_3
    iget-object p3, p3, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p3, p1, v2, p2, p4}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move v3, p2

    move/from16 v7, p4

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    return-void

    :cond_0
    const/4 v5, -0x1

    const/4 v8, 0x2

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v2, v6, :cond_3

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v4, v2, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    if-nez v4, :cond_1

    new-instance v1, Lnet/bytebuddy/jar/asm/CurrentFrame;

    invoke-direct {v1, v2}, Lnet/bytebuddy/jar/asm/CurrentFrame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iput-object v1, v2, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, p2}, Lnet/bytebuddy/jar/asm/Frame;->j(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    goto/16 :goto_8

    :cond_1
    if-ne v1, v5, :cond_2

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object v1, v4

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/Frame;->i(Lnet/bytebuddy/jar/asm/SymbolTable;I[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_2
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v1, p0}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    goto/16 :goto_8

    :cond_3
    if-ne v1, v5, :cond_7

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    if-nez v1, :cond_4

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    shr-int/2addr v1, v8

    new-instance v2, Lnet/bytebuddy/jar/asm/Frame;

    new-instance v4, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    invoke-direct {v2, v4}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6, v1}, Lnet/bytebuddy/jar/asm/Frame;->j(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V

    invoke-virtual {v2, p0}, Lnet/bytebuddy/jar/asm/Frame;->a(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    :cond_4
    iput v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {p0, v1, p2, v7}, Lnet/bytebuddy/jar/asm/MethodWriter;->j(III)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    aget-object v11, p3, v2

    invoke-static {v6, v11}, Lnet/bytebuddy/jar/asm/Frame;->d(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v6

    aput v6, v4, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v7, :cond_6

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    aget-object v6, p5, v2

    invoke-static {v5, v6}, Lnet/bytebuddy/jar/asm/Frame;->d(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->i()V

    goto/16 :goto_8

    :cond_7
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->z()I

    move-result v2

    const/16 v5, 0x32

    if-lt v2, v5, :cond_18

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v2, :cond_8

    new-instance v2, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v2}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    goto :goto_2

    :cond_8
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iget v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrameOffset:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v10

    if-gez v2, :cond_a

    if-ne v1, v6, :cond_9

    return-void

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a
    :goto_2
    if-eqz v1, :cond_11

    if-eq v1, v10, :cond_10

    const/16 v5, 0xfb

    if-eq v1, v8, :cond_f

    const/16 v3, 0x40

    if-eq v1, v6, :cond_d

    if-ne v1, v4, :cond_c

    if-ge v2, v3, :cond_b

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_3

    :cond_b
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0xf7

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_3
    aget-object v1, p5, v9

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_d
    if-ge v2, v3, :cond_e

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_7

    :cond_e
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_7

    :cond_f
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    sub-int/2addr v1, v3

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_7

    :cond_10
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    add-int/2addr v1, v3

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit16 v4, v3, 0xfb

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_13

    aget-object v2, p3, v1

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_11
    iput v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_12

    aget-object v2, p3, v1

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v7}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v7, :cond_13

    aget-object v2, p5, v1

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    :goto_7
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrameOffset:I

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/2addr v1, v10

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    :goto_8
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-ne v1, v8, :cond_17

    iput v7, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    :goto_9
    if-ge v9, v7, :cond_16

    aget-object v1, p5, v9

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_14

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_15

    :cond_14
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v1, v10

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_16
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v1, v2, :cond_17

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_17
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    return-void

    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Class versions V1_5 or less must use F_NEW frames."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method

.method public visitIincInsn(II)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v1, 0x84

    const/16 v2, 0xff

    if-gt p1, v2, :cond_1

    const/16 v2, 0x7f

    if-gt p2, v2, :cond_1

    const/16 v2, -0x80

    if-ge p2, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_1
    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz p2, :cond_3

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, p1, v0, v0}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_3
    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    if-le p1, p2, :cond_4

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    :cond_4
    return-void
.end method

.method public visitInsn(I)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_5

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v1, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_1
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :goto_1
    const/16 v0, 0xac

    if-lt p1, v0, :cond_3

    const/16 v0, 0xb1

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_5
    return-void
.end method

.method public visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    const v0, -0xffff01

    if-eqz p4, :cond_0

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    and-int/2addr p1, v0

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->d(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    and-int/2addr p1, v0

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->d(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitIntInsn(II)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_4

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0xbc

    if-eq p1, p2, :cond_4

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_2

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_2
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->i(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p3, p1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    const/16 p4, 0xba

    invoke-virtual {p2, p4, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz p2, :cond_3

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Symbol;->a()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    shr-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p2

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_1

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_1
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p2, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p2, p4, p3, p1, v0}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 10

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_0

    add-int/lit8 v3, p1, -0x21

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    iget-short v4, p2, Lnet/bytebuddy/jar/asm/Label;->a:S

    const/4 v5, 0x4

    and-int/2addr v4, v5

    const/16 v6, 0xa8

    const/16 v7, 0xa7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_4

    iget v4, p2, Lnet/bytebuddy/jar/asm/Label;->b:I

    sub-int/2addr v4, v1

    const/16 v1, -0x8000

    if-ge v4, v1, :cond_4

    if-ne v3, v7, :cond_1

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_1
    if-ne v3, v6, :cond_2

    const/16 p1, 0xc9

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_1
    const/4 p1, 0x0

    goto :goto_3

    :cond_2
    const/16 p1, 0xc6

    if-lt v3, p1, :cond_3

    xor-int/lit8 p1, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p1, v3, 0x1

    xor-int/2addr p1, v9

    sub-int/2addr p1, v9

    :goto_2
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v0, 0xdc

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iput-boolean v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    const/4 p1, 0x1

    :goto_3
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    sub-int/2addr v1, v9

    invoke-virtual {p2, v0, v1, v9}, Lnet/bytebuddy/jar/asm/Label;->f(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    goto :goto_5

    :cond_4
    if-eq v3, p1, :cond_5

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, p1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    sub-int/2addr v0, v9

    invoke-virtual {p2, p1, v0, v9}, Lnet/bytebuddy/jar/asm/Label;->f(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, p1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    sub-int/2addr v0, v9

    invoke-virtual {p2, p1, v0, v8}, Lnet/bytebuddy/jar/asm/Label;->f(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    :goto_4
    const/4 p1, 0x0

    :goto_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_e

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-ne v1, v5, :cond_6

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v0, v3, v8, v4, v4}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Label;->d()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    invoke-direct {p0, v8, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    if-eq v3, v7, :cond_b

    new-instance v4, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    goto :goto_6

    :cond_6
    const/4 v5, 0x3

    if-ne v1, v5, :cond_7

    iget-object p2, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {p2, v3, v8, v4, v4}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    goto :goto_6

    :cond_7
    if-ne v1, v2, :cond_8

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v0, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v0, v0, v3

    add-int/2addr p2, v0

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_6

    :cond_8
    if-ne v3, v6, :cond_a

    iget-short v1, p2, Lnet/bytebuddy/jar/asm/Label;->a:S

    and-int/lit8 v4, v1, 0x20

    if-nez v4, :cond_9

    or-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    iput-short v1, p2, Lnet/bytebuddy/jar/asm/Label;->a:S

    iput-boolean v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasSubroutines:Z

    :cond_9
    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v0, v9

    invoke-direct {p0, v0, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    new-instance v4, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v4}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    goto :goto_6

    :cond_a
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v1, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v0, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_b
    :goto_6
    if-eqz v4, :cond_d

    if-eqz p1, :cond_c

    iget-short p1, v4, Lnet/bytebuddy/jar/asm/Label;->a:S

    or-int/2addr p1, v2

    int-to-short p1, p1

    iput-short p1, v4, Lnet/bytebuddy/jar/asm/Label;->a:S

    :cond_c
    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_d
    if-ne v3, v7, :cond_e

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_e
    return-void
.end method

.method public visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 6

    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/ByteVector;->a:[B

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    invoke-virtual {p1, v2, v1}, Lnet/bytebuddy/jar/asm/Label;->g([BI)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    iget-short v0, p1, Lnet/bytebuddy/jar/asm/Label;->a:S

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v1, :cond_2

    iget v2, p1, Lnet/bytebuddy/jar/asm/Label;->b:I

    iget v5, v1, Lnet/bytebuddy/jar/asm/Label;->b:I

    if-ne v2, v5, :cond_1

    iget-short v2, v1, Lnet/bytebuddy/jar/asm/Label;->a:S

    and-int/2addr v0, v4

    or-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, v1, Lnet/bytebuddy/jar/asm/Label;->a:S

    iget-object v0, v1, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    return-void

    :cond_1
    invoke-direct {p0, v3, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_4

    iget v1, p1, Lnet/bytebuddy/jar/asm/Label;->b:I

    iget v2, v0, Lnet/bytebuddy/jar/asm/Label;->b:I

    if-ne v1, v2, :cond_3

    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    iget-short v2, p1, Lnet/bytebuddy/jar/asm/Label;->a:S

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iput-object v1, p1, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    return-void

    :cond_3
    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Label;

    :cond_4
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    new-instance v0, Lnet/bytebuddy/jar/asm/Frame;

    invoke-direct {v0, p1}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-nez v0, :cond_6

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    :cond_6
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Frame;->a:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    if-ne v1, v0, :cond_a

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_8

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->e:S

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    :cond_8
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_9

    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Label;->h:Lnet/bytebuddy/jar/asm/Label;

    :cond_9
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    :cond_a
    if-ne v1, v4, :cond_b

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-nez v0, :cond_b

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    :cond_b
    :goto_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->b(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget v0, p1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    iget v1, p1, Lnet/bytebuddy/jar/asm/Symbol;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_1

    const/16 v4, 0x11

    if-ne v1, v4, :cond_0

    iget-object v1, p1, Lnet/bytebuddy/jar/asm/Symbol;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x4a

    if-eq v1, v4, :cond_1

    const/16 v4, 0x44

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/16 v4, 0x12

    if-eqz v1, :cond_2

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_2

    :cond_2
    const/16 v5, 0x100

    if-lt v0, v5, :cond_3

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v6, 0x13

    invoke-virtual {v5, v6, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v5, v4, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_8

    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    :cond_5
    add-int/2addr p1, v2

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, v0, :cond_6

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_6
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, v4, v3, p1, v1}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public visitLineNumber(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTableLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTableLength:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p2, p2, Lnet/bytebuddy/jar/asm/Label;->b:I

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v1, :cond_0

    new-instance v1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTableLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTableLength:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, p4, Lnet/bytebuddy/jar/asm/Label;->b:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lnet/bytebuddy/jar/asm/Label;->b:I

    iget v3, p4, Lnet/bytebuddy/jar/asm/Label;->b:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p3

    invoke-virtual {p3, p6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_1
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez p3, :cond_2

    new-instance p3, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {p3}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_2
    iget p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTableLength:I

    add-int/2addr p3, v0

    iput p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTableLength:I

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p4, Lnet/bytebuddy/jar/asm/Label;->b:I

    invoke-virtual {p3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p3

    iget p5, p5, Lnet/bytebuddy/jar/asm/Label;->b:I

    iget p4, p4, Lnet/bytebuddy/jar/asm/Label;->b:I

    sub-int/2addr p5, p4

    invoke-virtual {p3, p5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p3

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p4, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p3, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_3

    const/16 p2, 0x44

    if-ne p1, p2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr p6, v0

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    if-le p6, p1, :cond_5

    iput p6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    :cond_5
    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    ushr-int/lit8 p1, p1, 0x18

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    array-length v1, p3

    invoke-virtual {p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    aget-object v2, p3, v1

    iget v2, v2, Lnet/bytebuddy/jar/asm/Label;->b:I

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lnet/bytebuddy/jar/asm/Label;->b:I

    aget-object v4, p3, v1

    iget v4, v4, Lnet/bytebuddy/jar/asm/Label;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    aget v3, p5, v1

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p2, v0}, Lnet/bytebuddy/jar/asm/TypePath;->a(Lnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    iget-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p2, p6}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 p1, 0x1

    if-eqz p7, :cond_1

    new-instance p2, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p2, p3, p1, v0, p4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p2

    :cond_1
    new-instance p2, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {p2, p3, p1, v0, p4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p2
.end method

.method public visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->f(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    array-length v0, p3

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    aget v1, p2, v3

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    aget-object v0, p3, v3

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {v0, v1, v4, v2}, Lnet/bytebuddy/jar/asm/Label;->f(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 2

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->computeAllFrames()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->computeMaxStackAndLocal()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    goto :goto_0

    :cond_2
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    :goto_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p2, p3, p4, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    const/4 p3, 0x0

    const/16 p4, 0xb9

    if-ne p1, p4, :cond_0

    iget-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, p2, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {p5, p4, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p4

    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Symbol;->a()I

    move-result p5

    shr-int/lit8 p5, p5, 0x2

    invoke-virtual {p4, p5, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget p5, p2, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {p4, p1, p5}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz p4, :cond_5

    iget p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v0, 0x4

    if-eq p5, v0, :cond_4

    const/4 v0, 0x3

    if-ne p5, v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Symbol;->a()I

    move-result p2

    and-int/lit8 p3, p2, 0x3

    shr-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    const/16 p2, 0xb8

    if-ne p1, p2, :cond_2

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p3

    :goto_1
    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_3

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_3
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p4, p4, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget-object p5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {p4, p1, p3, p2, p5}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p1, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    const/16 v2, 0xc5

    invoke-virtual {v0, v2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_2

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    rsub-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, v2, p2, p1, v1}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parametersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parametersCount:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->r(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    if-eqz p3, :cond_1

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-nez p3, :cond_0

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :cond_0
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    aget-object v1, p3, p1

    invoke-static {v0, p2, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p2

    aput-object p2, p3, p1

    return-object p2

    :cond_1
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-nez p3, :cond_2

    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    :cond_2
    iget-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    aget-object v1, p3, p1

    invoke-static {v0, p2, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->e(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p2

    aput-object p2, p3, p1

    return-object p2
.end method

.method public varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->f(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    array-length p1, p4

    :goto_0
    if-ge v3, p1, :cond_0

    aget-object p2, p4, v3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {p2, v0, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->f(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p4}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->d(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->d(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 7

    new-instance v6, Lnet/bytebuddy/jar/asm/Handler;

    if-eqz p4, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    move v4, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Handler;-><init>(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;ILjava/lang/String;)V

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    if-nez p1, :cond_1

    iput-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastHandler:Lnet/bytebuddy/jar/asm/Handler;

    iput-object v6, p1, Lnet/bytebuddy/jar/asm/Handler;->f:Lnet/bytebuddy/jar/asm/Handler;

    :goto_1
    iput-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastHandler:Lnet/bytebuddy/jar/asm/Handler;

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 1

    if-eqz p4, :cond_0

    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->d(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1

    :cond_0
    iget-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-static {p4, p1, p2, p3, v0}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->d(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->c(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object p2

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p2, Lnet/bytebuddy/jar/asm/Symbol;->a:I

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_3

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xbb

    if-ne p1, p2, :cond_3

    iget p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_1

    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_1
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1, v1, p2, v2}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 6

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v0, Lnet/bytebuddy/jar/asm/ByteVector;->b:I

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v1, 0xa9

    const/16 v2, 0x36

    const/4 v3, 0x4

    if-ge p2, v3, :cond_1

    if-eq p1, v1, :cond_1

    if-ge p1, v2, :cond_0

    add-int/lit8 v4, p1, -0x15

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1a

    goto :goto_0

    :cond_0
    add-int/lit8 v4, p1, -0x36

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x3b

    :goto_0
    add-int/2addr v4, p2

    invoke-virtual {v0, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_1
    const/16 v4, 0x100

    if-lt p2, v4, :cond_2

    const/16 v4, 0xc4

    invoke-virtual {v0, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->d(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->b(II)Lnet/bytebuddy/jar/asm/ByteVector;

    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_7

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eq v4, v3, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v1, :cond_4

    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->a:S

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->d:S

    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    goto :goto_3

    :cond_4
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v1, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_5

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    :cond_5
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->g:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lnet/bytebuddy/jar/asm/Frame;->c(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    :cond_7
    :goto_3
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz v0, :cond_a

    const/16 v1, 0x16

    if-eq p1, v1, :cond_9

    const/16 v1, 0x18

    if-eq p1, v1, :cond_9

    const/16 v1, 0x37

    if-eq p1, v1, :cond_9

    const/16 v1, 0x39

    if-ne p1, v1, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 p2, p2, 0x2

    :goto_5
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    if-le p2, v1, :cond_a

    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    :cond_a
    if-lt p1, v2, :cond_b

    if-ne v0, v3, :cond_b

    iget-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    if-eqz p1, :cond_b

    new-instance p1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {p1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    :cond_b
    return-void
.end method

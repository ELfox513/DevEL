.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;
.super Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterArgumentTypeList"
.end annotation


# instance fields
.field private final annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

.field private final argumentType:[Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->argumentType:[Ljava/lang/reflect/Type;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->argumentType:[Ljava/lang/reflect/Type;

    aget-object v0, v0, p1

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->annotationReader:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    invoke-interface {v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;->ofTypeArgument(I)Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;

    move-result-object p1

    invoke-static {v0, p1}, Lnet/bytebuddy/description/type/TypeDefinition$Sort;->describe(Ljava/lang/reflect/Type;Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfParameterizedType$ForLoadedType$ParameterArgumentTypeList;->argumentType:[Ljava/lang/reflect/Type;

    array-length v0, v0

    return v0
.end method

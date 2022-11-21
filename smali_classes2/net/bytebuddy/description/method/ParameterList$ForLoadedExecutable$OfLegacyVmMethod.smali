.class public Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;
.super Lnet/bytebuddy/description/method/ParameterList$AbstractBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfLegacyVmMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<",
        "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

.field private final parameterType:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V
    .locals 0

    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;->parameterType:[Ljava/lang/Class;

    iput-object p2, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;->parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;->get(I)Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .locals 4

    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;->parameterType:[Ljava/lang/Class;

    iget-object v3, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;->parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;-><init>(Ljava/lang/reflect/Method;I[Ljava/lang/Class;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfLegacyVmMethod;->parameterType:[Ljava/lang/Class;

    array-length v0, v0

    return v0
.end method

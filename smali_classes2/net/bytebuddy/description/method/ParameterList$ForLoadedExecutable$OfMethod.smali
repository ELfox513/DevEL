.class public Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;
.super Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$OfMethod;->get(I)Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .locals 3

    new-instance v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;

    iget-object v1, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->executable:Ljava/lang/Object;

    check-cast v1, Ljava/lang/reflect/Method;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

    invoke-direct {v0, v1, p1, v2}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;-><init>(Ljava/lang/reflect/Method;ILnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V

    return-object v0
.end method

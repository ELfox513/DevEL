.class public Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachedTypeVariable"
.end annotation


# instance fields
.field private final typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

.field private final typeVariableToken:Lnet/bytebuddy/description/type/TypeVariableToken;

.field private final visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/TypeVariableSource;Lnet/bytebuddy/description/type/TypeVariableToken;Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/TypeVariableSource;",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfTypeVariable;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;->typeVariableToken:Lnet/bytebuddy/description/type/TypeVariableToken;

    iput-object p3, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    return-void
.end method


# virtual methods
.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;->typeVariableToken:Lnet/bytebuddy/description/type/TypeVariableToken;

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/TypeVariableToken;->getAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;->typeVariableToken:Lnet/bytebuddy/description/type/TypeVariableToken;

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/TypeVariableToken;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariableSource()Lnet/bytebuddy/description/TypeVariableSource;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;->typeVariableSource:Lnet/bytebuddy/description/TypeVariableSource;

    return-object v0
.end method

.method public getUpperBounds()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;->typeVariableToken:Lnet/bytebuddy/description/type/TypeVariableToken;

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/TypeVariableToken;->getBounds()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeList$Generic$ForDetachedTypes$OfTypeVariables$AttachedTypeVariable;->visitor:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

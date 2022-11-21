.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/description/TypeVariableSource$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeVariableSubstitutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/description/TypeVariableSource$Visitor<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

.field private final typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->a:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->a:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->a:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->a:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    invoke-virtual {v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic onMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->onMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public onMethod(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    new-instance p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$RetainedMethodTypeVariable;

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->a:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-direct {p1, v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$RetainedMethodTypeVariable;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;Lnet/bytebuddy/description/type/TypeDescription$Generic;)V

    return-object p1
.end method

.method public bridge synthetic onType(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->onType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    return-object p1
.end method

.method public onType(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->a:Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;->a(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p1, v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->findBindingOf(Lnet/bytebuddy/description/type/TypeDescription$Generic;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor$Substitutor$ForTypeVariableBinding$TypeVariableSubstitutor;->typeVariable:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asRawType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    :cond_0
    return-object p1
.end method

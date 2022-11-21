.class public Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIRST:I


# instance fields
.field private current:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/UnknownNull;
    .end annotation
.end field

.field private final enumerations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;->enumerations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;->current:Ljava/util/Enumeration;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;->enumerations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;->enumerations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    iput-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;->current:Ljava/util/Enumeration;

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;->hasMoreElements()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Null reference is avoided by element check."
        value = {
            "UWF_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;->nextElement()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/URL;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Null reference is avoided by element check."
        value = {
            "UWF_FIELD_NOT_INITIALIZED_IN_CONSTRUCTOR"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/MultipleParentClassLoader$CompoundEnumeration;->current:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.class public interface abstract Lnet/bytebuddy/description/type/TypeList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/matcher/FilterableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeList$Generic;,
        Lnet/bytebuddy/description/type/TypeList$Empty;,
        Lnet/bytebuddy/description/type/TypeList$Explicit;,
        Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;,
        Lnet/bytebuddy/description/type/TypeList$AbstractBase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/FilterableList<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        "Lnet/bytebuddy/description/type/TypeList;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO_INTERFACES:[Ljava/lang/String;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Null reference cannot be mutated."
        value = {
            "MS_MUTABLE_ARRAY",
            "MS_OOI_PKGPROTECT"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field

.field public static final UNDEFINED:Lnet/bytebuddy/description/type/TypeList;
    .annotation runtime Lnet/bytebuddy/utility/nullability/AlwaysNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getStackSize()I
.end method

.method public abstract toInternalNames()[Ljava/lang/String;
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation
.end method

.class public abstract Li2/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Li2/l;
.end method

.method public abstract b(Lf2/b;)Li2/l$a;
.end method

.method public abstract c(Lf2/c;)Li2/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/c<",
            "*>;)",
            "Li2/l$a;"
        }
    .end annotation
.end method

.method public abstract d(Lf2/e;)Li2/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/e<",
            "*[B>;)",
            "Li2/l$a;"
        }
    .end annotation
.end method

.method public abstract e(Li2/m;)Li2/l$a;
.end method

.method public abstract f(Ljava/lang/String;)Li2/l$a;
.end method

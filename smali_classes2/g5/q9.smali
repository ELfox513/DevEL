.class public Lg5/q9;
.super Lg5/v5;
.source "SourceFile"


# instance fields
.field public final b:Lg5/ba;


# direct methods
.method public constructor <init>(Lg5/ba;)V
    .locals 1

    invoke-virtual {p1}, Lg5/ba;->b0()Lg5/b5;

    move-result-object v0

    invoke-direct {p0, v0}, Lg5/v5;-><init>(Lg5/b5;)V

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lg5/q9;->b:Lg5/ba;

    return-void
.end method

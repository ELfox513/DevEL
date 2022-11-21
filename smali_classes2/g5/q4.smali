.class public final Lg5/q4;
.super Lp/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp/e<",
        "Ljava/lang/String;",
        "Lb5/c1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic i:Lg5/t4;


# direct methods
.method public constructor <init>(Lg5/t4;I)V
    .locals 0

    iput-object p1, p0, Lg5/q4;->i:Lg5/t4;

    const/16 p1, 0x14

    invoke-direct {p0, p1}, Lp/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lx3/q;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lg5/q4;->i:Lg5/t4;

    invoke-static {v0, p1}, Lg5/t4;->i(Lg5/t4;Ljava/lang/String;)Lb5/c1;

    move-result-object p1

    return-object p1
.end method

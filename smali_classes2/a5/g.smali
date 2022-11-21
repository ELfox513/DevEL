.class public final synthetic La5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/m;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La5/g;->a:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, La5/g;->a:I

    check-cast p1, Lk4/l;

    check-cast p2, Lj5/j;

    invoke-virtual {p1, v0}, Lk4/l;->u0(I)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lj5/j;->c(Ljava/lang/Object;)V

    return-void
.end method

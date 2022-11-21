.class public final synthetic La5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/m;


# instance fields
.field public final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/f;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, La5/f;->a:Landroid/view/View;

    check-cast p1, Lk4/l;

    check-cast p2, Lj5/j;

    invoke-virtual {p1, v0}, Lk4/l;->m0(Landroid/view/View;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lj5/j;->c(Ljava/lang/Object;)V

    return-void
.end method

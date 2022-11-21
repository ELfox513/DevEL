.class public final La5/e;
.super La5/b;
.source "SourceFile"

# interfaces
.implements Lh4/e;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lh4/d$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La5/b;-><init>(Landroid/app/Activity;Lh4/d$a;)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/View;)Lj5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, La5/f;

    invoke-direct {v0, p1}, La5/f;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, La5/b;->x(Lv3/m;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)Lj5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, La5/g;

    invoke-direct {v0, p1}, La5/g;-><init>(I)V

    invoke-virtual {p0, v0}, La5/b;->x(Lv3/m;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.class public final La5/r;
.super La5/b;
.source "SourceFile"

# interfaces
.implements Lh4/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lh4/d$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, La5/b;-><init>(Landroid/app/Activity;Lh4/d$a;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, La5/x;

    invoke-direct {v0, p1}, La5/x;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, La5/k;->a(Lv3/m;)Lv3/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu3/e;->l(Lv3/q;)Lj5/i;

    return-void
.end method

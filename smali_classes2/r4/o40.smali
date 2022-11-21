.class public final Lr4/o40;
.super Lr4/p30;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/q40;


# direct methods
.method public synthetic constructor <init>(Lr4/q40;Lr4/n40;)V
    .locals 0

    iput-object p1, p0, Lr4/o40;->a:Lr4/q40;

    invoke-direct {p0}, Lr4/p30;-><init>()V

    return-void
.end method


# virtual methods
.method public final F6(Lr4/g30;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr4/o40;->a:Lr4/q40;

    invoke-static {v0}, Lr4/q40;->b(Lr4/q40;)Lv2/f$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lr4/o40;->a:Lr4/q40;

    invoke-static {v0}, Lr4/q40;->b(Lr4/q40;)Lv2/f$a;

    move-result-object v0

    iget-object v1, p0, Lr4/o40;->a:Lr4/q40;

    invoke-static {v1, p1}, Lr4/q40;->e(Lr4/q40;Lr4/g30;)Lv2/f;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lv2/f$a;->c(Lv2/f;Ljava/lang/String;)V

    return-void
.end method

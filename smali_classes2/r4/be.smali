.class public final Lr4/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lr4/id;

.field public final synthetic b:Lr4/fe;


# direct methods
.method public constructor <init>(Lr4/fe;Lr4/id;)V
    .locals 0

    iput-object p1, p0, Lr4/be;->b:Lr4/fe;

    iput-object p2, p0, Lr4/be;->a:Lr4/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/be;->b:Lr4/fe;

    invoke-static {v0}, Lr4/fe;->a(Lr4/fe;)Lr4/ge;

    move-result-object v0

    iget-object v1, p0, Lr4/be;->a:Lr4/id;

    invoke-interface {v0, v1}, Lr4/ge;->e(Lr4/id;)V

    return-void
.end method

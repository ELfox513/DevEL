.class public final synthetic Lr4/nm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/om2;

.field public final b:Lr4/lt;


# direct methods
.method public constructor <init>(Lr4/om2;Lr4/lt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/nm2;->a:Lr4/om2;

    iput-object p2, p0, Lr4/nm2;->b:Lr4/lt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/nm2;->a:Lr4/om2;

    iget-object v1, p0, Lr4/nm2;->b:Lr4/lt;

    iget-object v0, v0, Lr4/om2;->c:Lr4/pm2;

    invoke-static {v0}, Lr4/pm2;->e(Lr4/pm2;)Lr4/qn2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lr4/qn2;->B(Lr4/lt;)V

    return-void
.end method

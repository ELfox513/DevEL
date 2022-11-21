.class public final Lr4/ln0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Lr4/tn0;


# direct methods
.method public constructor <init>(Lr4/tn0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lr4/ln0;->d:Lr4/tn0;

    iput-object p2, p0, Lr4/ln0;->a:Ljava/lang/String;

    iput-object p3, p0, Lr4/ln0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/ln0;->d:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/ln0;->d:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    iget-object v1, p0, Lr4/ln0;->a:Ljava/lang/String;

    iget-object v2, p0, Lr4/ln0;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lr4/un0;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

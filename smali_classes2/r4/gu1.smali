.class public final synthetic Lr4/gu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/pu1;

.field public final b:Lr4/vm0;


# direct methods
.method public constructor <init>(Lr4/pu1;Lr4/vm0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/gu1;->a:Lr4/pu1;

    iput-object p2, p0, Lr4/gu1;->b:Lr4/vm0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/gu1;->a:Lr4/pu1;

    iget-object v1, p0, Lr4/gu1;->b:Lr4/vm0;

    invoke-virtual {v0, v1}, Lr4/pu1;->r(Lr4/vm0;)V

    return-void
.end method

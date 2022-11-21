.class public final synthetic Lr4/ku1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/pu1;

.field public final b:Lr4/zp2;

.field public final d:Lr4/k70;

.field public final k:Ljava/util/List;

.field public final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/pu1;Lr4/zp2;Lr4/k70;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ku1;->a:Lr4/pu1;

    iput-object p2, p0, Lr4/ku1;->b:Lr4/zp2;

    iput-object p3, p0, Lr4/ku1;->d:Lr4/k70;

    iput-object p4, p0, Lr4/ku1;->k:Ljava/util/List;

    iput-object p5, p0, Lr4/ku1;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lr4/ku1;->a:Lr4/pu1;

    iget-object v1, p0, Lr4/ku1;->b:Lr4/zp2;

    iget-object v2, p0, Lr4/ku1;->d:Lr4/k70;

    iget-object v3, p0, Lr4/ku1;->k:Ljava/util/List;

    iget-object v4, p0, Lr4/ku1;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lr4/pu1;->n(Lr4/zp2;Lr4/k70;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

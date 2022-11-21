.class public final synthetic Lr4/md1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/vl1;

.field public final b:Lr4/e5;

.field public final d:Lr4/iq;


# direct methods
.method public constructor <init>(Lr4/vl1;Lr4/e5;Lr4/iq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/md1;->a:Lr4/vl1;

    iput-object p2, p0, Lr4/md1;->b:Lr4/e5;

    iput-object p3, p0, Lr4/md1;->d:Lr4/iq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/md1;->a:Lr4/vl1;

    iget-object v1, p0, Lr4/md1;->b:Lr4/e5;

    iget-object v2, p0, Lr4/md1;->d:Lr4/iq;

    invoke-virtual {v0, v1, v2}, Lr4/vl1;->r(Lr4/e5;Lr4/iq;)V

    return-void
.end method

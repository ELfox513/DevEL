.class public final synthetic Lr4/bt2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/dt2;

.field public final b:Lr4/rs2;


# direct methods
.method public constructor <init>(Lr4/dt2;Lr4/rs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bt2;->a:Lr4/dt2;

    iput-object p2, p0, Lr4/bt2;->b:Lr4/rs2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/bt2;->a:Lr4/dt2;

    iget-object v1, p0, Lr4/bt2;->b:Lr4/rs2;

    iget-object v0, v0, Lr4/dt2;->f:Lr4/et2;

    invoke-static {v0}, Lr4/et2;->d(Lr4/et2;)Lr4/ft2;

    move-result-object v0

    invoke-interface {v0, v1}, Lr4/ft2;->z(Lr4/rs2;)V

    return-void
.end method

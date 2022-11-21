.class public final Lr4/fl1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/ub0;

.field public final b:Lr4/rb0;

.field public final c:Lr4/qb0;


# direct methods
.method public constructor <init>(Lr4/rb0;Lr4/qb0;Lr4/ub0;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fl1;->b:Lr4/rb0;

    iput-object p2, p0, Lr4/fl1;->c:Lr4/qb0;

    iput-object p3, p0, Lr4/fl1;->a:Lr4/ub0;

    return-void
.end method


# virtual methods
.method public final a()Lr4/ub0;
    .locals 1

    iget-object v0, p0, Lr4/fl1;->a:Lr4/ub0;

    return-object v0
.end method

.method public final b()Lr4/rb0;
    .locals 1

    iget-object v0, p0, Lr4/fl1;->b:Lr4/rb0;

    return-object v0
.end method

.method public final c()Lr4/qb0;
    .locals 1

    iget-object v0, p0, Lr4/fl1;->c:Lr4/qb0;

    return-object v0
.end method

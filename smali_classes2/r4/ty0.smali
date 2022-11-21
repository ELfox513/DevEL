.class public final Lr4/ty0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/m71;


# instance fields
.field public final a:Lr4/so2;

.field public final b:Lr4/bp2;

.field public final d:Lr4/mu2;

.field public final k:Lr4/pu2;


# direct methods
.method public constructor <init>(Lr4/bp2;Lr4/pu2;Lr4/mu2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/ty0;->b:Lr4/bp2;

    iput-object p2, p0, Lr4/ty0;->k:Lr4/pu2;

    iput-object p3, p0, Lr4/ty0;->d:Lr4/mu2;

    iget-object p1, p1, Lr4/bp2;->b:Lr4/ap2;

    iget-object p1, p1, Lr4/ap2;->b:Lr4/so2;

    iput-object p1, p0, Lr4/ty0;->a:Lr4/so2;

    return-void
.end method


# virtual methods
.method public final B(Lr4/lt;)V
    .locals 4

    iget-object p1, p0, Lr4/ty0;->k:Lr4/pu2;

    iget-object v0, p0, Lr4/ty0;->d:Lr4/mu2;

    iget-object v1, p0, Lr4/ty0;->b:Lr4/bp2;

    iget-object v2, p0, Lr4/ty0;->a:Lr4/so2;

    iget-object v2, v2, Lr4/so2;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lr4/mu2;->a(Lr4/bp2;Lr4/no2;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr4/pu2;->a(Ljava/util/List;)V

    return-void
.end method

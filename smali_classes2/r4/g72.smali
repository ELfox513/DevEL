.class public final Lr4/g72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/f;


# instance fields
.field public final synthetic a:Lr4/vm0;

.field public final synthetic b:Lr4/bp2;

.field public final synthetic c:Lr4/no2;

.field public final synthetic d:Lr4/m72;

.field public final synthetic e:Lr4/h72;


# direct methods
.method public constructor <init>(Lr4/h72;Lr4/vm0;Lr4/bp2;Lr4/no2;Lr4/m72;)V
    .locals 0

    iput-object p1, p0, Lr4/g72;->e:Lr4/h72;

    iput-object p2, p0, Lr4/g72;->a:Lr4/vm0;

    iput-object p3, p0, Lr4/g72;->b:Lr4/bp2;

    iput-object p4, p0, Lr4/g72;->c:Lr4/no2;

    iput-object p5, p0, Lr4/g72;->d:Lr4/m72;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lr4/g72;->a:Lr4/vm0;

    iget-object v1, p0, Lr4/g72;->e:Lr4/h72;

    invoke-static {v1}, Lr4/h72;->d(Lr4/h72;)Lr4/q72;

    move-result-object v1

    iget-object v2, p0, Lr4/g72;->b:Lr4/bp2;

    iget-object v3, p0, Lr4/g72;->c:Lr4/no2;

    iget-object v4, p0, Lr4/g72;->d:Lr4/m72;

    invoke-virtual {v1, v2, v3, p1, v4}, Lr4/q72;->a(Lr4/bp2;Lr4/no2;Landroid/view/View;Lr4/m72;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr4/vm0;->e(Ljava/lang/Object;)Z

    return-void
.end method

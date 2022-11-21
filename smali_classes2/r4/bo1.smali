.class public final Lr4/bo1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/h71;

.field public final b:Lr4/r81;

.field public final c:Lr4/e91;

.field public final d:Lr4/r91;

.field public final e:Lr4/kc1;

.field public final f:Lr4/no2;

.field public final g:Lr4/so2;


# direct methods
.method public constructor <init>(Lr4/h71;Lr4/r81;Lr4/e91;Lr4/r91;Lr4/kc1;Lr4/no2;Lr4/so2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/bo1;->a:Lr4/h71;

    iput-object p2, p0, Lr4/bo1;->b:Lr4/r81;

    iput-object p3, p0, Lr4/bo1;->c:Lr4/e91;

    iput-object p4, p0, Lr4/bo1;->d:Lr4/r91;

    iput-object p5, p0, Lr4/bo1;->e:Lr4/kc1;

    iput-object p6, p0, Lr4/bo1;->f:Lr4/no2;

    iput-object p7, p0, Lr4/bo1;->g:Lr4/so2;

    return-void
.end method


# virtual methods
.method public final a(Lr4/fo1;)V
    .locals 6

    invoke-static {p1}, Lr4/fo1;->a(Lr4/fo1;)Lr4/zn1;

    move-result-object v0

    iget-object v1, p0, Lr4/bo1;->a:Lr4/h71;

    iget-object v2, p0, Lr4/bo1;->c:Lr4/e91;

    iget-object v3, p0, Lr4/bo1;->d:Lr4/r91;

    iget-object v4, p0, Lr4/bo1;->e:Lr4/kc1;

    iget-object v5, p0, Lr4/bo1;->b:Lr4/r81;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lr4/ao1;->a(Lr4/r81;)La3/x;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lr4/zn1;->a(Lr4/zn1;Lr4/gt;Lr4/t40;La3/q;Lr4/v40;La3/x;)V

    iget-object v0, p0, Lr4/bo1;->f:Lr4/no2;

    iget-object v1, p0, Lr4/bo1;->g:Lr4/so2;

    invoke-virtual {p1, v0, v1}, Lr4/fo1;->h(Lr4/no2;Lr4/so2;)V

    return-void
.end method

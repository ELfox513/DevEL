.class public final synthetic Lr4/qd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ab;


# instance fields
.field public final a:Lr4/d51;

.field public final b:Lr4/ws3;

.field public final c:Lr4/ct3;

.field public final d:Ljava/io/IOException;

.field public final e:Z


# direct methods
.method public constructor <init>(Lr4/d51;Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qd0;->a:Lr4/d51;

    iput-object p2, p0, Lr4/qd0;->b:Lr4/ws3;

    iput-object p3, p0, Lr4/qd0;->c:Lr4/ct3;

    iput-object p4, p0, Lr4/qd0;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lr4/qd0;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget-object v1, p0, Lr4/qd0;->a:Lr4/d51;

    iget-object v2, p0, Lr4/qd0;->b:Lr4/ws3;

    iget-object v3, p0, Lr4/qd0;->c:Lr4/ct3;

    iget-object v4, p0, Lr4/qd0;->d:Ljava/io/IOException;

    iget-boolean v5, p0, Lr4/qd0;->e:Z

    move-object v0, p1

    check-cast v0, Lr4/f61;

    invoke-interface/range {v0 .. v5}, Lr4/f61;->p(Lr4/d51;Lr4/ws3;Lr4/ct3;Ljava/io/IOException;Z)V

    return-void
.end method

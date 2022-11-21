.class public final synthetic Lr4/qp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ek;


# instance fields
.field public final a:Lr4/xp0;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Lr4/xp0;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/qp0;->a:Lr4/xp0;

    iput-object p2, p0, Lr4/qp0;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lr4/qp0;->c:Z

    return-void
.end method


# virtual methods
.method public final zza()Lr4/fk;
    .locals 3

    iget-object v0, p0, Lr4/qp0;->a:Lr4/xp0;

    iget-object v1, p0, Lr4/qp0;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lr4/qp0;->c:Z

    invoke-virtual {v0, v1, v2}, Lr4/xp0;->i0(Ljava/lang/String;Z)Lr4/fk;

    move-result-object v0

    return-object v0
.end method

.class public final synthetic Lr4/jr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/l7;


# instance fields
.field public final a:Lr4/sr0;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Lr4/sr0;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/jr0;->a:Lr4/sr0;

    iput-object p2, p0, Lr4/jr0;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lr4/jr0;->c:Z

    return-void
.end method


# virtual methods
.method public final zza()Lr4/o8;
    .locals 3

    iget-object v0, p0, Lr4/jr0;->a:Lr4/sr0;

    iget-object v1, p0, Lr4/jr0;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lr4/jr0;->c:Z

    invoke-virtual {v0, v1, v2}, Lr4/sr0;->e0(Ljava/lang/String;Z)Lr4/o8;

    move-result-object v0

    return-object v0
.end method

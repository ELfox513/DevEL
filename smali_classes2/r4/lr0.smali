.class public final synthetic Lr4/lr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/l7;


# instance fields
.field public final a:Lr4/sr0;

.field public final b:Lr4/l7;


# direct methods
.method public constructor <init>(Lr4/sr0;Lr4/l7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lr0;->a:Lr4/sr0;

    iput-object p2, p0, Lr4/lr0;->b:Lr4/l7;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/o8;
    .locals 2

    iget-object v0, p0, Lr4/lr0;->a:Lr4/sr0;

    iget-object v1, p0, Lr4/lr0;->b:Lr4/l7;

    invoke-virtual {v0, v1}, Lr4/sr0;->i0(Lr4/l7;)Lr4/o8;

    move-result-object v0

    return-object v0
.end method

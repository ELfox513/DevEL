.class public final synthetic Lr4/t62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ps2;


# instance fields
.field public final a:Lr4/v62;

.field public final b:Lr4/bp2;

.field public final c:Lr4/no2;

.field public final d:Lr4/t12;


# direct methods
.method public constructor <init>(Lr4/v62;Lr4/bp2;Lr4/no2;Lr4/t12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/t62;->a:Lr4/v62;

    iput-object p2, p0, Lr4/t62;->b:Lr4/bp2;

    iput-object p3, p0, Lr4/t62;->c:Lr4/no2;

    iput-object p4, p0, Lr4/t62;->d:Lr4/t12;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/t62;->a:Lr4/v62;

    iget-object v1, p0, Lr4/t62;->b:Lr4/bp2;

    iget-object v2, p0, Lr4/t62;->c:Lr4/no2;

    iget-object v3, p0, Lr4/t62;->d:Lr4/t12;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, v3, p1}, Lr4/v62;->c(Lr4/bp2;Lr4/no2;Lr4/t12;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lr4/x31;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/bp2;

.field public final b:Lr4/no2;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lr4/bp2;Lr4/no2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/x31;->a:Lr4/bp2;

    iput-object p2, p0, Lr4/x31;->b:Lr4/no2;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    :cond_0
    iput-object p3, p0, Lr4/x31;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lr4/bp2;
    .locals 1

    iget-object v0, p0, Lr4/x31;->a:Lr4/bp2;

    return-object v0
.end method

.method public final b()Lr4/no2;
    .locals 1

    iget-object v0, p0, Lr4/x31;->b:Lr4/no2;

    return-object v0
.end method

.method public final c()Lr4/so2;
    .locals 1

    iget-object v0, p0, Lr4/x31;->a:Lr4/bp2;

    iget-object v0, v0, Lr4/bp2;->b:Lr4/ap2;

    iget-object v0, v0, Lr4/ap2;->b:Lr4/so2;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/x31;->c:Ljava/lang/String;

    return-object v0
.end method

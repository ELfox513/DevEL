.class public final Lg5/h8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb5/i1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:Z

.field public final synthetic p:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lb5/i1;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lg5/h8;->p:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lg5/h8;->a:Lb5/i1;

    iput-object p3, p0, Lg5/h8;->b:Ljava/lang/String;

    iput-object p4, p0, Lg5/h8;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lg5/h8;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lg5/h8;->p:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->I()Lg5/w8;

    move-result-object v0

    iget-object v1, p0, Lg5/h8;->a:Lb5/i1;

    iget-object v2, p0, Lg5/h8;->b:Ljava/lang/String;

    iget-object v3, p0, Lg5/h8;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lg5/h8;->k:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lg5/w8;->V(Lb5/i1;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

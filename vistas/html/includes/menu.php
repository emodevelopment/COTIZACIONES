<!-- Top Bar Start -->
<div class="topbar">

	<!-- LOGO -->
	<div class="topbar-left">
		<div class="text-center">
			<img src="../../assets/images/icono_menu.png" width="70" heigth="70" class="rounded-circle" />
		</div>
	</div>

	<!-- Button mobile view to collapse sidebar menu -->
	<nav class="navbar-custom">

		<ul class="list-inline float-right mb-0">
			<li class="list-inline-item notification-list hide-phone">
				<a class="nav-link waves-light waves-effect" href="#" id="btn-fullscreen">
					<i class="mdi mdi-crop-free noti-icon"></i>
				</a>
			</li>

			<li class="list-inline-item dropdown notification-list">
				<a class="nav-link dropdown-toggle waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
				aria-haspopup="false" aria-expanded="false">
				<img src="../../assets/images/users/avatargt2.png" alt="user" class="rounded-circle">
			</a>
			<div class="dropdown-menu dropdown-menu-right profile-dropdown " aria-labelledby="Preview">

				<!-- item-->
				<a href="javascript:void(0);" class="dropdown-item notify-item">
					<i class="mdi mdi-account-star-variant"></i> <span>Perfil</span>
				</a>

				<!-- item-->
				<a href="../../login.php?logout" class="dropdown-item notify-item">
					<i class="mdi mdi-logout"></i> <span>Salir</span>
				</a>

			</div>
		</li>

	</ul>

	<ul class="list-inline menu-left mb-0">
		<li class="float-left">
			<button class="button-menu-mobile open-left waves-light waves-effect">
				<i class="mdi mdi-menu"></i>
			</button>
		</li>
	</ul>

</nav>

</div>
<!-- Top Bar End -->
<!-- ========== Left Sidebar Start ========== -->

<div class="left side-menu">
	<div class="sidebar-inner slimscrollleft">
		<!--- Divider -->
		<div id="sidebar-menu">
			<ul>
				<li class="menu-title">Menu</li>

				<!--<li>
					<a href="principal.php" class="waves-effect waves-primary"><i
						class="ti-home"></i><span> Inicio </span></a>
					</li>-->
					<li>
						<a href="../html/clientes.php" class="waves-effect waves-primary"><i
							class="ti-user"></i><span> Clientes </span></a>
						</li>
							<li class="has_sub">
								<a href="javascript:void(0);" class="waves-effect waves-primary"><i class="ti-package"></i><span> Productos </span>
									<span class="menu-arrow"></span></a>
									<ul class="list-unstyled">
										<li><a href="../html/lineas.php">Categorias</a></li>
										<li><a href="../html/marca.php">Marca</a></li>
										<li><a href="../html/productos.php">Productos</a></li>
									    <!--<li><a href="../html/kardex.php">Kardex</a></li>-->
										<!--<li><a href="../html/ajustes.php">Ajuste de Inventario</a></li>-->
									</ul>
								</li>

								<!--<li>
									<a href="../html/traslados.php" class="waves-effect waves-primary"><i
										class="ti-truck"></i><span> Traslados </span></a>
									</li>-->
									<li class="has_sub">
										<a href="javascript:void(0);" class="waves-effect waves-primary"><i class="ti-receipt"></i><span> Cotización
										</span> <span class="menu-arrow"></span></a>
										<ul class="list-unstyled">
											<li><a href="../html/new_cotizacion.php">Nueva Cotización</a></li>
											<li><a href="../html/bitacora_cotizacion.php">Historial de Cotizacíon</a></li>
										</ul>
									</li>

									<li>
						<a href="#" class="waves-effect waves-primary"><i
							class="ti-user"></i><span> Fletes </span></a>
						</li>
							
									

											<li class="has_sub">
												<a href="javascript:void(0);" class="waves-effect waves-primary"><i class="ti-settings"></i><span> Configuración </span> <span class="menu-arrow"></span></a>
												<ul class="list-unstyled">
													<li><a href="../html/empresa.php">Empresa</a></li>
													<li><a href="../html/sucursales.php">Sucursales</a></li>
													<!--<li><a href="../html/comprobantes.php">Comprobantes</a></li>-->
													<!--<li><a href="../html/impuestos.php">Impuestos</a></li>-->
													<li><a href="../html/grupos.php">Grupos de Usuarios</a></li>
													<li><a href="../html/usuarios.php">Usuario</a></li>
													<li><a href="../html/backup.php">Backup</a></li>
													<li><a href="../html/restore.php">Restore</a></li>
												</ul>
											</li>

										</ul>

										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<!-- Left Sidebar End -->
